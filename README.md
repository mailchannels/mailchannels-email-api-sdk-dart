# MailChannels Email API for Dart

A server-side client for all 42 MailChannels Email API operations: sending,
subaccounts, webhooks, suppressions, metrics, usage, DKIM and custom tracking.
Support: dev@mailchannels.com. MIT licensed.

This 0.1.0 candidate is not yet published to pub.dev. Installation instructions
will point to the registry after publication. Dart 3.11 or newer is required;
Linux x64 is validated on Dart 3.11.0, 3.12.0 and 3.13.1. Do not embed sending
credentials in Flutter mobile or browser applications.

The package includes generated model implementations. Consumers do not need
build_runner or a code-generation step. The public import is:

```dart
import 'package:mailchannels_email_api/mailchannels_email_api.dart';
```

See `example/mailchannels_email_api_example.dart` for a complete dry-run example.
It reads MAILCHANNELS_API_KEY, MAILCHANNELS_SENDER and MAILCHANNELS_RECIPIENT from
the server environment. Running it contacts MailChannels but does not deliver
email. Tests use local fixtures with external networking disabled.

For sending, `sendEmail` returns `SendEmailResult`: HTTP 200 exposes `.dryRun`,
HTTP 202 exposes `.accepted` (request ID and recipient results), and unfamiliar
success JSON is retained in `.unknown`. Empty success bodies have null data.
`queueEmail` returns an asynchronous receipt. Tracking create/update distinguish
an active domain from HTTP 202 DNS setup instructions using separate typed fields.

Every operation accepts `requestTimeout` (positive Duration, default 30 seconds)
and a Dio CancelToken. The deadline covers the Dio request through body receipt
and transformation, cancels the operation on expiry and preserves the caller's
shared cancellation token. Synchronous model conversion and event-loop blocking
are outside this deadline. The default Dio has 5-second connect and 3-second
receive-inactivity limits; requestTimeout also bounds slowly arriving responses.

Default redirects are disabled; caller-supplied Dio transport settings remain
caller-owned. Use HTTPS endpoints and platform certificate verification. An
explicit basePathOverride supports isolated testing. No application retry is
added: retrying a send can duplicate delivery.

Model toString and MailChannelsException routine formatting redact details.
Explicit serialization, rawMessage, error, requestOptions, response and direct
Dio Response formatting can contain keys, message content and personal data.
Interceptors and application logging need their own redaction.

Validation covers 80 local checks, including a baseline for every operation,
status-aware responses, URI encoding, credentials/diagnostics, redirects,
deadlines/cancellation and TLS trust/hostname/expiry rejection. This is not
exhaustive parameter/status coverage or live-provider conformance. Windows,
macOS, HTTP/2 failures and null-versus-absent fidelity for optional nullable
fields have not been validated.

## Development

Use `bash scripts/test.sh` for the locked local fixtures (Docker and Python with
cryptography required). `DART_VERSION=3.11.0` or `3.12.0` selects the other pinned
runtimes. `bash scripts/regenerate.sh` recreates source from the reviewed OpenAPI
schema and maintained corrections; Python with PyYAML is required.
`bash scripts/pack.sh` validates an extracted package consumer, and
`python scripts/audit.py pubspec.lock .work/audit.json` queries OSV.
CI performs these checks without sending email. Publishing is not automated.

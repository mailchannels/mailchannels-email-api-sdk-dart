import 'dart:io';
import 'package:mailchannels_email_api/mailchannels_email_api.dart';

// This contacts MailChannels in dry-run mode. It does not deliver email.
// Credentials and addresses must come from the server environment.
Future<void> main() async {
  final key = Platform.environment['MAILCHANNELS_API_KEY'];
  final sender = Platform.environment['MAILCHANNELS_SENDER'];
  final recipient = Platform.environment['MAILCHANNELS_RECIPIENT'];
  if (key == null || sender == null || recipient == null) {
    throw StateError('Set the API key, sender and recipient environment variables');
  }
  final client = MailchannelsEmailApi();
  final message = MailSendBody((b) => b
    ..from.email = sender
    ..personalizations.add(Personalization((p) => p
      ..to.add(EmailAddress((a) => a..email = recipient))))
    ..subject = 'MailChannels dry-run example'
    ..content.add(ContentItem((c) => c
      ..type = 'text/plain'
      ..value = 'Server-side Dart example')));
  try {
    final response = await client.getSendApi().sendEmail(
      xApiKey: key,
      mailSendBody: message,
      dryRun: true,
      requestTimeout: const Duration(seconds: 30),
    );
    print('Dry-run status: ${response.statusCode}');
  } on MailChannelsException catch (error) {
    // Safe routine formatting; explicit raw fields may contain sensitive data.
    stderr.writeln(error);
    exitCode = 1;
  } finally {
    client.dio.close(force: true);
  }
}

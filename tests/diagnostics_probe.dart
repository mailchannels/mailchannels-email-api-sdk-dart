import 'package:mailchannels_email_api/mailchannels_email_api.dart';
import 'package:mailchannels_email_api/src/serializers.dart';

void main() {
  final models = <Object>[
    APIKey((b) => b..id=41..key='fixture-api-secret'),
    SMTPPassword((b) => b..id=12..enabled=true..smtpPassword='fixture-smtp-secret'),
    EmailAddress((b) => b..email='fixture-recipient@example.invalid'),
    ContentItem((b) => b..type='text/plain'..value='fixture-body-secret'),
  ];
  final secrets=['fixture-api-secret','fixture-smtp-secret','fixture-recipient@example.invalid','fixture-body-secret'];
  for (var i=0; i<models.length; i++) {
    if (models[i].toString().contains(secrets[i])) throw StateError('Routine model formatting exposes fixture data: ${models[i].runtimeType}');
    if (!standardSerializers.serialize(models[i]).toString().contains(secrets[i])) throw StateError('Explicit serialization lost data');
  }
  print('PASS four model diagnostic redactions; explicit serialization retained');
}

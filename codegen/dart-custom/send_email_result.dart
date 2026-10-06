import 'package:built_value/serializer.dart';
import 'package:mailchannels_email_api/src/model/message.dart';
import 'package:mailchannels_email_api/src/model/send_results.dart';

/// Success data selected by HTTP status; unmatched typed fields are null.
class SendEmailResult {
  final int? statusCode;
  final Message? dryRun;
  final SendResults? accepted;
  final Object? unknown;
  const SendEmailResult(this.statusCode, {this.dryRun, this.accepted, this.unknown});

  static SendEmailResult decode(int? status, Object raw, Serializers serializers) {
    if (status == 200) {
      return SendEmailResult(status,
          dryRun: serializers.deserialize(raw, specifiedType: const FullType(Message)) as Message);
    }
    if (status == 202) {
      return SendEmailResult(status,
          accepted: serializers.deserialize(raw, specifiedType: const FullType(SendResults)) as SendResults);
    }
    return SendEmailResult(status, unknown: raw);
  }
  @override
  String toString() => 'SendEmailResult { [REDACTED] }';
}

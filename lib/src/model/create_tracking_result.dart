import 'package:built_value/serializer.dart';
import 'package:mailchannels_email_api/src/model/custom_tracking_domain.dart';
import 'package:mailchannels_email_api/src/model/dns_setup_required.dart';

/// Status-specific tracking-domain result. Nonmatching typed fields are null.
class CreateTrackingResult {
  final int? statusCode;
  final CustomTrackingDomain? created;
  final DnsSetupRequired? accepted;
  final Object? unknown;
  const CreateTrackingResult(this.statusCode, {this.created, this.accepted, this.unknown});
  static CreateTrackingResult decode(int? status, Object raw, Serializers serializers) {
    if (status == 201) return CreateTrackingResult(status,
        created: serializers.deserialize(raw, specifiedType: const FullType(CustomTrackingDomain)) as CustomTrackingDomain);
    if (status == 202) return CreateTrackingResult(status,
        accepted: serializers.deserialize(raw, specifiedType: const FullType(DnsSetupRequired)) as DnsSetupRequired);
    return CreateTrackingResult(status, unknown: raw);
  }
  @override
  String toString() => 'CreateTrackingResult { [REDACTED] }';
}

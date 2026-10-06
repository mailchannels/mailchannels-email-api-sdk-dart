import 'package:built_value/serializer.dart';
import 'package:mailchannels_email_api/src/model/custom_tracking_domain.dart';
import 'package:mailchannels_email_api/src/model/dns_setup_required.dart';

/// Status-specific tracking-domain result. Nonmatching typed fields are null.
class UpdateTrackingResult {
  final int? statusCode;
  final CustomTrackingDomain? updated;
  final DnsSetupRequired? accepted;
  final Object? unknown;
  const UpdateTrackingResult(this.statusCode, {this.updated, this.accepted, this.unknown});
  static UpdateTrackingResult decode(int? status, Object raw, Serializers serializers) {
    if (status == 200) return UpdateTrackingResult(status,
        updated: serializers.deserialize(raw, specifiedType: const FullType(CustomTrackingDomain)) as CustomTrackingDomain);
    if (status == 202) return UpdateTrackingResult(status,
        accepted: serializers.deserialize(raw, specifiedType: const FullType(DnsSetupRequired)) as DnsSetupRequired);
    return UpdateTrackingResult(status, unknown: raw);
  }
  @override
  String toString() => 'UpdateTrackingResult { [REDACTED] }';
}

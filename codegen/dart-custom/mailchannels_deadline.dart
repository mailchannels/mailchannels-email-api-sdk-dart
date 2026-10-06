import 'package:dio/dio.dart';

/// Bounds the Dio request through body receipt/transformation. Synchronous model
/// conversion after Dio returns is outside this deadline. Expiry cancels only
/// this operation, never the caller's potentially shared cancellation token.
Future<Response<T>> withMailChannelsDeadline<T>(
  Future<Response<T>> Function(CancelToken) request,
  CancelToken? caller,
  Duration timeout,
) async {
  if (timeout <= Duration.zero) {
    throw ArgumentError.value(timeout, 'requestTimeout', 'must be positive');
  }
  final effective = CancelToken();
  if (caller != null) {
    if (caller.isCancelled) {
      effective.cancel(caller.cancelError);
    } else {
      // A reusable caller token must not retain every completed request.
      final reference = WeakReference(effective);
      caller.whenCancel.then((reason) => reference.target?.cancel(reason));
    }
  }
  return request(effective).timeout(timeout, onTimeout: () {
    final failure = DioException.receiveTimeout(
      timeout: timeout,
      requestOptions: effective.requestOptions ?? RequestOptions(path: ''),
    );
    effective.cancel('MailChannels request deadline exceeded');
    throw failure;
  });
}

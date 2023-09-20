import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failures.freezed.dart';

// @freezed
// class MainFailure with _$MainFailure {
//   const factory MainFailure.clientFailure() = _ClientFailure;
//   const factory MainFailure.serverFailure() = _ServerFailure;
//   const factory MainFailure.noDatafound({
//     required String message,
//   }) = _NoDataFound;
//   const factory MainFailure.unauthorized({
//     required String message,
//   }) = _Unauthorized;
// }

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientFailure({
    String? message,
  }) = _ClientFailure;
  const factory MainFailure.serverFailure({
    String? message,
  }) = _ServerFailure;
  const factory MainFailure.noDatafound({
    required String message,
  }) = _NoDataFound;
  const factory MainFailure.unauthorized({
    required String message,
  }) = _Unauthorized;
  const factory MainFailure.forbidden({
    required String message,
  }) = _Forbidden;
  const factory MainFailure.serviceUnavailable({
    required String message,
  }) = _ServiceUnavailable;
  const factory MainFailure.unknown({
    required String message,
  }) = _UnknownFailure;
}

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_result.freezed.dart';

@freezed
abstract class FireStoreResult<T> with _$FireStoreResult<T> {
  const factory FireStoreResult.success({@required T data}) = Success<T>;

  const factory FireStoreResult.failure({@required String error}) = Failure<T>;
}

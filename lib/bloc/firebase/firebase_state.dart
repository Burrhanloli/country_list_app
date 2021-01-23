import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_state.freezed.dart';

@freezed
abstract class FirebaseState with _$FirebaseState {
  const factory FirebaseState.initial() = FirebaseInitial;

  const factory FirebaseState.loading() = FirebaseLoading;

  const factory FirebaseState.loaded() = FirebaseLoaded;

  const factory FirebaseState.error() = FirebaseError;
}
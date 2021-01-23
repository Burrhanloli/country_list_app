import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_state.freezed.dart';

@freezed
abstract class NetworkState with _$NetworkState {
  const factory NetworkState.connectionInitial() = ConnectionInitial;

  const factory NetworkState.connectionSuccess() = ConnectionSuccess;

  const factory NetworkState.connectionFailure() = ConnectionFailure;
}

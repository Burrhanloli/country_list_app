import 'package:country_list_app/bloc/network/network_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "network_event.freezed.dart";

@freezed
abstract class NetworkEvent with _$NetworkEvent {
  const factory NetworkEvent.listenConnection() = ListenConnection;

  const factory NetworkEvent.connectionChanged(
      {@required NetworkState connection}) = ConnectionChanged;
}

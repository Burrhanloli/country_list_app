import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:country_list_app/bloc/network/network_event.dart';
import 'package:country_list_app/bloc/network/network_state.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  NetworkBloc() : super(const ConnectionInitial());

  StreamSubscription _subscription;
  final connectionChecker = DataConnectionChecker();

  @override
  Stream<NetworkState> mapEventToState(
    NetworkEvent event,
  ) async* {
    if (event is ListenConnection) {
      final DataConnectionStatus connectionStatus =
          await connectionChecker.connectionStatus;
      checkConnection(connectionStatus);
      _subscription = connectionChecker.onStatusChange
          .listen((status) => checkConnection(status));
    }
    if (event is ConnectionChanged) yield event.connection;
  }

  void checkConnection(DataConnectionStatus status) {
    if (status == DataConnectionStatus.disconnected) {
      add(const ConnectionChanged(connection: ConnectionFailure()));
    } else {
      add(const ConnectionChanged(connection: ConnectionSuccess()));
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}

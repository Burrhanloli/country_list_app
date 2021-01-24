import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
      await checkConnection(connectionStatus);
      _subscription = connectionChecker.onStatusChange
          .listen((status) async => checkConnection(status));
    }
    if (event is ConnectionChanged) yield event.connection;
  }

  Future<void> checkConnection(DataConnectionStatus status) async {
    if (status == DataConnectionStatus.disconnected) {
      await FirebaseFirestore.instance.disableNetwork();
      add(const ConnectionChanged(connection: ConnectionFailure()));
    } else {
      await FirebaseFirestore.instance.enableNetwork();
      add(const ConnectionChanged(connection: ConnectionSuccess()));
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}

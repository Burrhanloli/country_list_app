// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'network_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NetworkEventTearOff {
  const _$NetworkEventTearOff();

// ignore: unused_element
  ListenConnection listenConnection() {
    return const ListenConnection();
  }

// ignore: unused_element
  ConnectionChanged connectionChanged({@required NetworkState connection}) {
    return ConnectionChanged(
      connection: connection,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NetworkEvent = _$NetworkEventTearOff();

/// @nodoc
mixin _$NetworkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult listenConnection(),
    @required TResult connectionChanged(NetworkState connection),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult listenConnection(),
    TResult connectionChanged(NetworkState connection),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult listenConnection(ListenConnection value),
    @required TResult connectionChanged(ConnectionChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult listenConnection(ListenConnection value),
    TResult connectionChanged(ConnectionChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NetworkEventCopyWith<$Res> {
  factory $NetworkEventCopyWith(
          NetworkEvent value, $Res Function(NetworkEvent) then) =
      _$NetworkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkEventCopyWithImpl<$Res> implements $NetworkEventCopyWith<$Res> {
  _$NetworkEventCopyWithImpl(this._value, this._then);

  final NetworkEvent _value;
  // ignore: unused_field
  final $Res Function(NetworkEvent) _then;
}

/// @nodoc
abstract class $ListenConnectionCopyWith<$Res> {
  factory $ListenConnectionCopyWith(
          ListenConnection value, $Res Function(ListenConnection) then) =
      _$ListenConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenConnectionCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res>
    implements $ListenConnectionCopyWith<$Res> {
  _$ListenConnectionCopyWithImpl(
      ListenConnection _value, $Res Function(ListenConnection) _then)
      : super(_value, (v) => _then(v as ListenConnection));

  @override
  ListenConnection get _value => super._value as ListenConnection;
}

/// @nodoc
class _$ListenConnection implements ListenConnection {
  const _$ListenConnection();

  @override
  String toString() {
    return 'NetworkEvent.listenConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListenConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult listenConnection(),
    @required TResult connectionChanged(NetworkState connection),
  }) {
    assert(listenConnection != null);
    assert(connectionChanged != null);
    return listenConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult listenConnection(),
    TResult connectionChanged(NetworkState connection),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listenConnection != null) {
      return listenConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult listenConnection(ListenConnection value),
    @required TResult connectionChanged(ConnectionChanged value),
  }) {
    assert(listenConnection != null);
    assert(connectionChanged != null);
    return listenConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult listenConnection(ListenConnection value),
    TResult connectionChanged(ConnectionChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listenConnection != null) {
      return listenConnection(this);
    }
    return orElse();
  }
}

abstract class ListenConnection implements NetworkEvent {
  const factory ListenConnection() = _$ListenConnection;
}

/// @nodoc
abstract class $ConnectionChangedCopyWith<$Res> {
  factory $ConnectionChangedCopyWith(
          ConnectionChanged value, $Res Function(ConnectionChanged) then) =
      _$ConnectionChangedCopyWithImpl<$Res>;
  $Res call({NetworkState connection});

  $NetworkStateCopyWith<$Res> get connection;
}

/// @nodoc
class _$ConnectionChangedCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res>
    implements $ConnectionChangedCopyWith<$Res> {
  _$ConnectionChangedCopyWithImpl(
      ConnectionChanged _value, $Res Function(ConnectionChanged) _then)
      : super(_value, (v) => _then(v as ConnectionChanged));

  @override
  ConnectionChanged get _value => super._value as ConnectionChanged;

  @override
  $Res call({
    Object connection = freezed,
  }) {
    return _then(ConnectionChanged(
      connection: connection == freezed
          ? _value.connection
          : connection as NetworkState,
    ));
  }

  @override
  $NetworkStateCopyWith<$Res> get connection {
    if (_value.connection == null) {
      return null;
    }
    return $NetworkStateCopyWith<$Res>(_value.connection, (value) {
      return _then(_value.copyWith(connection: value));
    });
  }
}

/// @nodoc
class _$ConnectionChanged implements ConnectionChanged {
  const _$ConnectionChanged({@required this.connection})
      : assert(connection != null);

  @override
  final NetworkState connection;

  @override
  String toString() {
    return 'NetworkEvent.connectionChanged(connection: $connection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConnectionChanged &&
            (identical(other.connection, connection) ||
                const DeepCollectionEquality()
                    .equals(other.connection, connection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(connection);

  @JsonKey(ignore: true)
  @override
  $ConnectionChangedCopyWith<ConnectionChanged> get copyWith =>
      _$ConnectionChangedCopyWithImpl<ConnectionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult listenConnection(),
    @required TResult connectionChanged(NetworkState connection),
  }) {
    assert(listenConnection != null);
    assert(connectionChanged != null);
    return connectionChanged(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult listenConnection(),
    TResult connectionChanged(NetworkState connection),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionChanged != null) {
      return connectionChanged(connection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult listenConnection(ListenConnection value),
    @required TResult connectionChanged(ConnectionChanged value),
  }) {
    assert(listenConnection != null);
    assert(connectionChanged != null);
    return connectionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult listenConnection(ListenConnection value),
    TResult connectionChanged(ConnectionChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionChanged != null) {
      return connectionChanged(this);
    }
    return orElse();
  }
}

abstract class ConnectionChanged implements NetworkEvent {
  const factory ConnectionChanged({@required NetworkState connection}) =
      _$ConnectionChanged;

  NetworkState get connection;
  @JsonKey(ignore: true)
  $ConnectionChangedCopyWith<ConnectionChanged> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'network_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NetworkStateTearOff {
  const _$NetworkStateTearOff();

// ignore: unused_element
  ConnectionInitial connectionInitial() {
    return const ConnectionInitial();
  }

// ignore: unused_element
  ConnectionSuccess connectionSuccess() {
    return const ConnectionSuccess();
  }

// ignore: unused_element
  ConnectionFailure connectionFailure() {
    return const ConnectionFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $NetworkState = _$NetworkStateTearOff();

/// @nodoc
mixin _$NetworkState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectionInitial(),
    @required TResult connectionSuccess(),
    @required TResult connectionFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectionInitial(),
    TResult connectionSuccess(),
    TResult connectionFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectionInitial(ConnectionInitial value),
    @required TResult connectionSuccess(ConnectionSuccess value),
    @required TResult connectionFailure(ConnectionFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectionInitial(ConnectionInitial value),
    TResult connectionSuccess(ConnectionSuccess value),
    TResult connectionFailure(ConnectionFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NetworkStateCopyWith<$Res> {
  factory $NetworkStateCopyWith(
          NetworkState value, $Res Function(NetworkState) then) =
      _$NetworkStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkStateCopyWithImpl<$Res> implements $NetworkStateCopyWith<$Res> {
  _$NetworkStateCopyWithImpl(this._value, this._then);

  final NetworkState _value;
  // ignore: unused_field
  final $Res Function(NetworkState) _then;
}

/// @nodoc
abstract class $ConnectionInitialCopyWith<$Res> {
  factory $ConnectionInitialCopyWith(
          ConnectionInitial value, $Res Function(ConnectionInitial) then) =
      _$ConnectionInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionInitialCopyWithImpl<$Res>
    extends _$NetworkStateCopyWithImpl<$Res>
    implements $ConnectionInitialCopyWith<$Res> {
  _$ConnectionInitialCopyWithImpl(
      ConnectionInitial _value, $Res Function(ConnectionInitial) _then)
      : super(_value, (v) => _then(v as ConnectionInitial));

  @override
  ConnectionInitial get _value => super._value as ConnectionInitial;
}

/// @nodoc
class _$ConnectionInitial implements ConnectionInitial {
  const _$ConnectionInitial();

  @override
  String toString() {
    return 'NetworkState.connectionInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectionInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectionInitial(),
    @required TResult connectionSuccess(),
    @required TResult connectionFailure(),
  }) {
    assert(connectionInitial != null);
    assert(connectionSuccess != null);
    assert(connectionFailure != null);
    return connectionInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectionInitial(),
    TResult connectionSuccess(),
    TResult connectionFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionInitial != null) {
      return connectionInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectionInitial(ConnectionInitial value),
    @required TResult connectionSuccess(ConnectionSuccess value),
    @required TResult connectionFailure(ConnectionFailure value),
  }) {
    assert(connectionInitial != null);
    assert(connectionSuccess != null);
    assert(connectionFailure != null);
    return connectionInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectionInitial(ConnectionInitial value),
    TResult connectionSuccess(ConnectionSuccess value),
    TResult connectionFailure(ConnectionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionInitial != null) {
      return connectionInitial(this);
    }
    return orElse();
  }
}

abstract class ConnectionInitial implements NetworkState {
  const factory ConnectionInitial() = _$ConnectionInitial;
}

/// @nodoc
abstract class $ConnectionSuccessCopyWith<$Res> {
  factory $ConnectionSuccessCopyWith(
          ConnectionSuccess value, $Res Function(ConnectionSuccess) then) =
      _$ConnectionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionSuccessCopyWithImpl<$Res>
    extends _$NetworkStateCopyWithImpl<$Res>
    implements $ConnectionSuccessCopyWith<$Res> {
  _$ConnectionSuccessCopyWithImpl(
      ConnectionSuccess _value, $Res Function(ConnectionSuccess) _then)
      : super(_value, (v) => _then(v as ConnectionSuccess));

  @override
  ConnectionSuccess get _value => super._value as ConnectionSuccess;
}

/// @nodoc
class _$ConnectionSuccess implements ConnectionSuccess {
  const _$ConnectionSuccess();

  @override
  String toString() {
    return 'NetworkState.connectionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectionInitial(),
    @required TResult connectionSuccess(),
    @required TResult connectionFailure(),
  }) {
    assert(connectionInitial != null);
    assert(connectionSuccess != null);
    assert(connectionFailure != null);
    return connectionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectionInitial(),
    TResult connectionSuccess(),
    TResult connectionFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionSuccess != null) {
      return connectionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectionInitial(ConnectionInitial value),
    @required TResult connectionSuccess(ConnectionSuccess value),
    @required TResult connectionFailure(ConnectionFailure value),
  }) {
    assert(connectionInitial != null);
    assert(connectionSuccess != null);
    assert(connectionFailure != null);
    return connectionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectionInitial(ConnectionInitial value),
    TResult connectionSuccess(ConnectionSuccess value),
    TResult connectionFailure(ConnectionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionSuccess != null) {
      return connectionSuccess(this);
    }
    return orElse();
  }
}

abstract class ConnectionSuccess implements NetworkState {
  const factory ConnectionSuccess() = _$ConnectionSuccess;
}

/// @nodoc
abstract class $ConnectionFailureCopyWith<$Res> {
  factory $ConnectionFailureCopyWith(
          ConnectionFailure value, $Res Function(ConnectionFailure) then) =
      _$ConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionFailureCopyWithImpl<$Res>
    extends _$NetworkStateCopyWithImpl<$Res>
    implements $ConnectionFailureCopyWith<$Res> {
  _$ConnectionFailureCopyWithImpl(
      ConnectionFailure _value, $Res Function(ConnectionFailure) _then)
      : super(_value, (v) => _then(v as ConnectionFailure));

  @override
  ConnectionFailure get _value => super._value as ConnectionFailure;
}

/// @nodoc
class _$ConnectionFailure implements ConnectionFailure {
  const _$ConnectionFailure();

  @override
  String toString() {
    return 'NetworkState.connectionFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectionInitial(),
    @required TResult connectionSuccess(),
    @required TResult connectionFailure(),
  }) {
    assert(connectionInitial != null);
    assert(connectionSuccess != null);
    assert(connectionFailure != null);
    return connectionFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectionInitial(),
    TResult connectionSuccess(),
    TResult connectionFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionFailure != null) {
      return connectionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectionInitial(ConnectionInitial value),
    @required TResult connectionSuccess(ConnectionSuccess value),
    @required TResult connectionFailure(ConnectionFailure value),
  }) {
    assert(connectionInitial != null);
    assert(connectionSuccess != null);
    assert(connectionFailure != null);
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectionInitial(ConnectionInitial value),
    TResult connectionSuccess(ConnectionSuccess value),
    TResult connectionFailure(ConnectionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class ConnectionFailure implements NetworkState {
  const factory ConnectionFailure() = _$ConnectionFailure;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favourites_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FavouritesStateTearOff {
  const _$FavouritesStateTearOff();

// ignore: unused_element
  Idle idle() {
    return const Idle();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Data data({@required List<Country> data}) {
    return Data(
      data: data,
    );
  }

// ignore: unused_element
  Error error({@required String error}) {
    return Error(
      error: error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FavouritesState = _$FavouritesStateTearOff();

/// @nodoc
mixin _$FavouritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult data(List<Country> data),
    @required TResult error(String error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult data(List<Country> data),
    TResult error(String error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(Idle value),
    @required TResult loading(Loading value),
    @required TResult data(Data value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(Idle value),
    TResult loading(Loading value),
    TResult data(Data value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FavouritesStateCopyWith<$Res> {
  factory $FavouritesStateCopyWith(
          FavouritesState value, $Res Function(FavouritesState) then) =
      _$FavouritesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

  final FavouritesState _value;
  // ignore: unused_field
  final $Res Function(FavouritesState) _then;
}

/// @nodoc
abstract class $IdleCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) then) =
      _$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<$Res> extends _$FavouritesStateCopyWithImpl<$Res>
    implements $IdleCopyWith<$Res> {
  _$IdleCopyWithImpl(Idle _value, $Res Function(Idle) _then)
      : super(_value, (v) => _then(v as Idle));

  @override
  Idle get _value => super._value as Idle;
}

/// @nodoc
class _$Idle implements Idle {
  const _$Idle();

  @override
  String toString() {
    return 'FavouritesState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult data(List<Country> data),
    @required TResult error(String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult data(List<Country> data),
    TResult error(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(Idle value),
    @required TResult loading(Loading value),
    @required TResult data(Data value),
    @required TResult error(Error value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(Idle value),
    TResult loading(Loading value),
    TResult data(Data value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements FavouritesState {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$FavouritesStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'FavouritesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult data(List<Country> data),
    @required TResult error(String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult data(List<Country> data),
    TResult error(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(Idle value),
    @required TResult loading(Loading value),
    @required TResult data(Data value),
    @required TResult error(Error value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(Idle value),
    TResult loading(Loading value),
    TResult data(Data value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements FavouritesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<Country> data});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$FavouritesStateCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Data(
      data: data == freezed ? _value.data : data as List<Country>,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data({@required this.data}) : assert(data != null);

  @override
  final List<Country> data;

  @override
  String toString() {
    return 'FavouritesState.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult data(List<Country> data),
    @required TResult error(String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult data(List<Country> data),
    TResult error(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(Idle value),
    @required TResult loading(Loading value),
    @required TResult data(Data value),
    @required TResult error(Error value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(Idle value),
    TResult loading(Loading value),
    TResult data(Data value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data implements FavouritesState {
  const factory Data({@required List<Country> data}) = _$Data;

  List<Country> get data;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$FavouritesStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(Error(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error({@required this.error}) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'FavouritesState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult data(List<Country> data),
    @required TResult error(String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult data(List<Country> data),
    TResult error(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(Idle value),
    @required TResult loading(Loading value),
    @required TResult data(Data value),
    @required TResult error(Error value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(Idle value),
    TResult loading(Loading value),
    TResult data(Data value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements FavouritesState {
  const factory Error({@required String error}) = _$Error;

  String get error;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith;
}

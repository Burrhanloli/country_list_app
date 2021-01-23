// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'firebase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FirebaseStateTearOff {
  const _$FirebaseStateTearOff();

// ignore: unused_element
  FirebaseInitial initial() {
    return const FirebaseInitial();
  }

// ignore: unused_element
  FirebaseLoading loading() {
    return const FirebaseLoading();
  }

// ignore: unused_element
  FirebaseLoaded loaded() {
    return const FirebaseLoaded();
  }

// ignore: unused_element
  FirebaseError error() {
    return const FirebaseError();
  }
}

/// @nodoc
// ignore: unused_element
const $FirebaseState = _$FirebaseStateTearOff();

/// @nodoc
mixin _$FirebaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(FirebaseInitial value),
    @required TResult loading(FirebaseLoading value),
    @required TResult loaded(FirebaseLoaded value),
    @required TResult error(FirebaseError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(FirebaseInitial value),
    TResult loading(FirebaseLoading value),
    TResult loaded(FirebaseLoaded value),
    TResult error(FirebaseError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FirebaseStateCopyWith<$Res> {
  factory $FirebaseStateCopyWith(
          FirebaseState value, $Res Function(FirebaseState) then) =
      _$FirebaseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirebaseStateCopyWithImpl<$Res>
    implements $FirebaseStateCopyWith<$Res> {
  _$FirebaseStateCopyWithImpl(this._value, this._then);

  final FirebaseState _value;
  // ignore: unused_field
  final $Res Function(FirebaseState) _then;
}

/// @nodoc
abstract class $FirebaseInitialCopyWith<$Res> {
  factory $FirebaseInitialCopyWith(
          FirebaseInitial value, $Res Function(FirebaseInitial) then) =
      _$FirebaseInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirebaseInitialCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res>
    implements $FirebaseInitialCopyWith<$Res> {
  _$FirebaseInitialCopyWithImpl(
      FirebaseInitial _value, $Res Function(FirebaseInitial) _then)
      : super(_value, (v) => _then(v as FirebaseInitial));

  @override
  FirebaseInitial get _value => super._value as FirebaseInitial;
}

/// @nodoc
class _$FirebaseInitial implements FirebaseInitial {
  const _$FirebaseInitial();

  @override
  String toString() {
    return 'FirebaseState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FirebaseInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(FirebaseInitial value),
    @required TResult loading(FirebaseLoading value),
    @required TResult loaded(FirebaseLoaded value),
    @required TResult error(FirebaseError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(FirebaseInitial value),
    TResult loading(FirebaseLoading value),
    TResult loaded(FirebaseLoaded value),
    TResult error(FirebaseError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FirebaseInitial implements FirebaseState {
  const factory FirebaseInitial() = _$FirebaseInitial;
}

/// @nodoc
abstract class $FirebaseLoadingCopyWith<$Res> {
  factory $FirebaseLoadingCopyWith(
          FirebaseLoading value, $Res Function(FirebaseLoading) then) =
      _$FirebaseLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirebaseLoadingCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res>
    implements $FirebaseLoadingCopyWith<$Res> {
  _$FirebaseLoadingCopyWithImpl(
      FirebaseLoading _value, $Res Function(FirebaseLoading) _then)
      : super(_value, (v) => _then(v as FirebaseLoading));

  @override
  FirebaseLoading get _value => super._value as FirebaseLoading;
}

/// @nodoc
class _$FirebaseLoading implements FirebaseLoading {
  const _$FirebaseLoading();

  @override
  String toString() {
    return 'FirebaseState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FirebaseLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(),
    TResult error(),
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
    @required TResult initial(FirebaseInitial value),
    @required TResult loading(FirebaseLoading value),
    @required TResult loaded(FirebaseLoaded value),
    @required TResult error(FirebaseError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(FirebaseInitial value),
    TResult loading(FirebaseLoading value),
    TResult loaded(FirebaseLoaded value),
    TResult error(FirebaseError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FirebaseLoading implements FirebaseState {
  const factory FirebaseLoading() = _$FirebaseLoading;
}

/// @nodoc
abstract class $FirebaseLoadedCopyWith<$Res> {
  factory $FirebaseLoadedCopyWith(
          FirebaseLoaded value, $Res Function(FirebaseLoaded) then) =
      _$FirebaseLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirebaseLoadedCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res>
    implements $FirebaseLoadedCopyWith<$Res> {
  _$FirebaseLoadedCopyWithImpl(
      FirebaseLoaded _value, $Res Function(FirebaseLoaded) _then)
      : super(_value, (v) => _then(v as FirebaseLoaded));

  @override
  FirebaseLoaded get _value => super._value as FirebaseLoaded;
}

/// @nodoc
class _$FirebaseLoaded implements FirebaseLoaded {
  const _$FirebaseLoaded();

  @override
  String toString() {
    return 'FirebaseState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FirebaseLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(FirebaseInitial value),
    @required TResult loading(FirebaseLoading value),
    @required TResult loaded(FirebaseLoaded value),
    @required TResult error(FirebaseError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(FirebaseInitial value),
    TResult loading(FirebaseLoading value),
    TResult loaded(FirebaseLoaded value),
    TResult error(FirebaseError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FirebaseLoaded implements FirebaseState {
  const factory FirebaseLoaded() = _$FirebaseLoaded;
}

/// @nodoc
abstract class $FirebaseErrorCopyWith<$Res> {
  factory $FirebaseErrorCopyWith(
          FirebaseError value, $Res Function(FirebaseError) then) =
      _$FirebaseErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirebaseErrorCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res>
    implements $FirebaseErrorCopyWith<$Res> {
  _$FirebaseErrorCopyWithImpl(
      FirebaseError _value, $Res Function(FirebaseError) _then)
      : super(_value, (v) => _then(v as FirebaseError));

  @override
  FirebaseError get _value => super._value as FirebaseError;
}

/// @nodoc
class _$FirebaseError implements FirebaseError {
  const _$FirebaseError();

  @override
  String toString() {
    return 'FirebaseState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FirebaseError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(FirebaseInitial value),
    @required TResult loading(FirebaseLoading value),
    @required TResult loaded(FirebaseLoaded value),
    @required TResult error(FirebaseError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(FirebaseInitial value),
    TResult loading(FirebaseLoading value),
    TResult loaded(FirebaseLoaded value),
    TResult error(FirebaseError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FirebaseError implements FirebaseState {
  const factory FirebaseError() = _$FirebaseError;
}

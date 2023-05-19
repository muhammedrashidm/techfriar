// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phone, String password) loginButtonPressed,
    required TResult Function() removeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phone, String password)? loginButtonPressed,
    TResult? Function()? removeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phone, String password)? loginButtonPressed,
    TResult Function()? removeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventStarted value) started,
    required TResult Function(_AuthEventLoginButtonPressed value)
        loginButtonPressed,
    required TResult Function(_AuthEventRemoveError value) removeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventStarted value)? started,
    TResult? Function(_AuthEventLoginButtonPressed value)? loginButtonPressed,
    TResult? Function(_AuthEventRemoveError value)? removeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventStarted value)? started,
    TResult Function(_AuthEventLoginButtonPressed value)? loginButtonPressed,
    TResult Function(_AuthEventRemoveError value)? removeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthEventStartedCopyWith<$Res> {
  factory _$$_AuthEventStartedCopyWith(
          _$_AuthEventStarted value, $Res Function(_$_AuthEventStarted) then) =
      __$$_AuthEventStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthEventStartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthEventStarted>
    implements _$$_AuthEventStartedCopyWith<$Res> {
  __$$_AuthEventStartedCopyWithImpl(
      _$_AuthEventStarted _value, $Res Function(_$_AuthEventStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthEventStarted implements _AuthEventStarted {
  const _$_AuthEventStarted();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthEventStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phone, String password) loginButtonPressed,
    required TResult Function() removeError,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phone, String password)? loginButtonPressed,
    TResult? Function()? removeError,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phone, String password)? loginButtonPressed,
    TResult Function()? removeError,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventStarted value) started,
    required TResult Function(_AuthEventLoginButtonPressed value)
        loginButtonPressed,
    required TResult Function(_AuthEventRemoveError value) removeError,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventStarted value)? started,
    TResult? Function(_AuthEventLoginButtonPressed value)? loginButtonPressed,
    TResult? Function(_AuthEventRemoveError value)? removeError,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventStarted value)? started,
    TResult Function(_AuthEventLoginButtonPressed value)? loginButtonPressed,
    TResult Function(_AuthEventRemoveError value)? removeError,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _AuthEventStarted implements AuthEvent {
  const factory _AuthEventStarted() = _$_AuthEventStarted;
}

/// @nodoc
abstract class _$$_AuthEventLoginButtonPressedCopyWith<$Res> {
  factory _$$_AuthEventLoginButtonPressedCopyWith(
          _$_AuthEventLoginButtonPressed value,
          $Res Function(_$_AuthEventLoginButtonPressed) then) =
      __$$_AuthEventLoginButtonPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String password});
}

/// @nodoc
class __$$_AuthEventLoginButtonPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthEventLoginButtonPressed>
    implements _$$_AuthEventLoginButtonPressedCopyWith<$Res> {
  __$$_AuthEventLoginButtonPressedCopyWithImpl(
      _$_AuthEventLoginButtonPressed _value,
      $Res Function(_$_AuthEventLoginButtonPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$_AuthEventLoginButtonPressed(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthEventLoginButtonPressed implements _AuthEventLoginButtonPressed {
  const _$_AuthEventLoginButtonPressed(
      {required this.phone, required this.password});

  @override
  final String phone;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginButtonPressed(phone: $phone, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventLoginButtonPressed &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEventLoginButtonPressedCopyWith<_$_AuthEventLoginButtonPressed>
      get copyWith => __$$_AuthEventLoginButtonPressedCopyWithImpl<
          _$_AuthEventLoginButtonPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phone, String password) loginButtonPressed,
    required TResult Function() removeError,
  }) {
    return loginButtonPressed(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phone, String password)? loginButtonPressed,
    TResult? Function()? removeError,
  }) {
    return loginButtonPressed?.call(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phone, String password)? loginButtonPressed,
    TResult Function()? removeError,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(phone, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventStarted value) started,
    required TResult Function(_AuthEventLoginButtonPressed value)
        loginButtonPressed,
    required TResult Function(_AuthEventRemoveError value) removeError,
  }) {
    return loginButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventStarted value)? started,
    TResult? Function(_AuthEventLoginButtonPressed value)? loginButtonPressed,
    TResult? Function(_AuthEventRemoveError value)? removeError,
  }) {
    return loginButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventStarted value)? started,
    TResult Function(_AuthEventLoginButtonPressed value)? loginButtonPressed,
    TResult Function(_AuthEventRemoveError value)? removeError,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _AuthEventLoginButtonPressed implements AuthEvent {
  const factory _AuthEventLoginButtonPressed(
      {required final String phone,
      required final String password}) = _$_AuthEventLoginButtonPressed;

  String get phone;
  String get password;
  @JsonKey(ignore: true)
  _$$_AuthEventLoginButtonPressedCopyWith<_$_AuthEventLoginButtonPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthEventRemoveErrorCopyWith<$Res> {
  factory _$$_AuthEventRemoveErrorCopyWith(_$_AuthEventRemoveError value,
          $Res Function(_$_AuthEventRemoveError) then) =
      __$$_AuthEventRemoveErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthEventRemoveErrorCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthEventRemoveError>
    implements _$$_AuthEventRemoveErrorCopyWith<$Res> {
  __$$_AuthEventRemoveErrorCopyWithImpl(_$_AuthEventRemoveError _value,
      $Res Function(_$_AuthEventRemoveError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthEventRemoveError implements _AuthEventRemoveError {
  const _$_AuthEventRemoveError();

  @override
  String toString() {
    return 'AuthEvent.removeError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthEventRemoveError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phone, String password) loginButtonPressed,
    required TResult Function() removeError,
  }) {
    return removeError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phone, String password)? loginButtonPressed,
    TResult? Function()? removeError,
  }) {
    return removeError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phone, String password)? loginButtonPressed,
    TResult Function()? removeError,
    required TResult orElse(),
  }) {
    if (removeError != null) {
      return removeError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventStarted value) started,
    required TResult Function(_AuthEventLoginButtonPressed value)
        loginButtonPressed,
    required TResult Function(_AuthEventRemoveError value) removeError,
  }) {
    return removeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventStarted value)? started,
    TResult? Function(_AuthEventLoginButtonPressed value)? loginButtonPressed,
    TResult? Function(_AuthEventRemoveError value)? removeError,
  }) {
    return removeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventStarted value)? started,
    TResult Function(_AuthEventLoginButtonPressed value)? loginButtonPressed,
    TResult Function(_AuthEventRemoveError value)? removeError,
    required TResult orElse(),
  }) {
    if (removeError != null) {
      return removeError(this);
    }
    return orElse();
  }
}

abstract class _AuthEventRemoveError implements AuthEvent {
  const factory _AuthEventRemoveError() = _$_AuthEventRemoveError;
}

/// @nodoc
mixin _$AuthState {
  DataModal? get userData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataModal? userData, bool isLoading,
            bool hasError, String? errorMessage)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataModal? userData, bool isLoading, bool hasError,
            String? errorMessage)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataModal? userData, bool isLoading, bool hasError,
            String? errorMessage)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {DataModal? userData,
      bool isLoading,
      bool hasError,
      String? errorMessage});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as DataModal?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataModal? userData,
      bool isLoading,
      bool hasError,
      String? errorMessage});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_Initial(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as DataModal?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.userData,
      required this.isLoading,
      required this.hasError,
      this.errorMessage});

  @override
  final DataModal? userData;
  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthState.initial(userData: $userData, isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userData, isLoading, hasError, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataModal? userData, bool isLoading,
            bool hasError, String? errorMessage)
        initial,
  }) {
    return initial(userData, isLoading, hasError, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataModal? userData, bool isLoading, bool hasError,
            String? errorMessage)?
        initial,
  }) {
    return initial?.call(userData, isLoading, hasError, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataModal? userData, bool isLoading, bool hasError,
            String? errorMessage)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(userData, isLoading, hasError, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {final DataModal? userData,
      required final bool isLoading,
      required final bool hasError,
      final String? errorMessage}) = _$_Initial;

  @override
  DataModal? get userData;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

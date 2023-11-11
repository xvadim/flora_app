// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flora_navigator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FloraNavigatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FloraService service) serviceSelected,
    required TResult Function(int year) yearEntered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FloraService service)? serviceSelected,
    TResult? Function(int year)? yearEntered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FloraService service)? serviceSelected,
    TResult Function(int year)? yearEntered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServiceSelected value) serviceSelected,
    required TResult Function(_YearEntered value) yearEntered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServiceSelected value)? serviceSelected,
    TResult? Function(_YearEntered value)? yearEntered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServiceSelected value)? serviceSelected,
    TResult Function(_YearEntered value)? yearEntered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloraNavigatorEventCopyWith<$Res> {
  factory $FloraNavigatorEventCopyWith(
          FloraNavigatorEvent value, $Res Function(FloraNavigatorEvent) then) =
      _$FloraNavigatorEventCopyWithImpl<$Res, FloraNavigatorEvent>;
}

/// @nodoc
class _$FloraNavigatorEventCopyWithImpl<$Res, $Val extends FloraNavigatorEvent>
    implements $FloraNavigatorEventCopyWith<$Res> {
  _$FloraNavigatorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServiceSelectedImplCopyWith<$Res> {
  factory _$$ServiceSelectedImplCopyWith(_$ServiceSelectedImpl value,
          $Res Function(_$ServiceSelectedImpl) then) =
      __$$ServiceSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FloraService service});
}

/// @nodoc
class __$$ServiceSelectedImplCopyWithImpl<$Res>
    extends _$FloraNavigatorEventCopyWithImpl<$Res, _$ServiceSelectedImpl>
    implements _$$ServiceSelectedImplCopyWith<$Res> {
  __$$ServiceSelectedImplCopyWithImpl(
      _$ServiceSelectedImpl _value, $Res Function(_$ServiceSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
  }) {
    return _then(_$ServiceSelectedImpl(
      null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as FloraService,
    ));
  }
}

/// @nodoc

class _$ServiceSelectedImpl implements _ServiceSelected {
  const _$ServiceSelectedImpl(this.service);

  @override
  final FloraService service;

  @override
  String toString() {
    return 'FloraNavigatorEvent.serviceSelected(service: $service)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceSelectedImpl &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(runtimeType, service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceSelectedImplCopyWith<_$ServiceSelectedImpl> get copyWith =>
      __$$ServiceSelectedImplCopyWithImpl<_$ServiceSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FloraService service) serviceSelected,
    required TResult Function(int year) yearEntered,
  }) {
    return serviceSelected(service);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FloraService service)? serviceSelected,
    TResult? Function(int year)? yearEntered,
  }) {
    return serviceSelected?.call(service);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FloraService service)? serviceSelected,
    TResult Function(int year)? yearEntered,
    required TResult orElse(),
  }) {
    if (serviceSelected != null) {
      return serviceSelected(service);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServiceSelected value) serviceSelected,
    required TResult Function(_YearEntered value) yearEntered,
  }) {
    return serviceSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServiceSelected value)? serviceSelected,
    TResult? Function(_YearEntered value)? yearEntered,
  }) {
    return serviceSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServiceSelected value)? serviceSelected,
    TResult Function(_YearEntered value)? yearEntered,
    required TResult orElse(),
  }) {
    if (serviceSelected != null) {
      return serviceSelected(this);
    }
    return orElse();
  }
}

abstract class _ServiceSelected implements FloraNavigatorEvent {
  const factory _ServiceSelected(final FloraService service) =
      _$ServiceSelectedImpl;

  FloraService get service;
  @JsonKey(ignore: true)
  _$$ServiceSelectedImplCopyWith<_$ServiceSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$YearEnteredImplCopyWith<$Res> {
  factory _$$YearEnteredImplCopyWith(
          _$YearEnteredImpl value, $Res Function(_$YearEnteredImpl) then) =
      __$$YearEnteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int year});
}

/// @nodoc
class __$$YearEnteredImplCopyWithImpl<$Res>
    extends _$FloraNavigatorEventCopyWithImpl<$Res, _$YearEnteredImpl>
    implements _$$YearEnteredImplCopyWith<$Res> {
  __$$YearEnteredImplCopyWithImpl(
      _$YearEnteredImpl _value, $Res Function(_$YearEnteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
  }) {
    return _then(_$YearEnteredImpl(
      null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$YearEnteredImpl implements _YearEntered {
  const _$YearEnteredImpl(this.year);

  @override
  final int year;

  @override
  String toString() {
    return 'FloraNavigatorEvent.yearEntered(year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearEnteredImpl &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YearEnteredImplCopyWith<_$YearEnteredImpl> get copyWith =>
      __$$YearEnteredImplCopyWithImpl<_$YearEnteredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FloraService service) serviceSelected,
    required TResult Function(int year) yearEntered,
  }) {
    return yearEntered(year);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FloraService service)? serviceSelected,
    TResult? Function(int year)? yearEntered,
  }) {
    return yearEntered?.call(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FloraService service)? serviceSelected,
    TResult Function(int year)? yearEntered,
    required TResult orElse(),
  }) {
    if (yearEntered != null) {
      return yearEntered(year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServiceSelected value) serviceSelected,
    required TResult Function(_YearEntered value) yearEntered,
  }) {
    return yearEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServiceSelected value)? serviceSelected,
    TResult? Function(_YearEntered value)? yearEntered,
  }) {
    return yearEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServiceSelected value)? serviceSelected,
    TResult Function(_YearEntered value)? yearEntered,
    required TResult orElse(),
  }) {
    if (yearEntered != null) {
      return yearEntered(this);
    }
    return orElse();
  }
}

abstract class _YearEntered implements FloraNavigatorEvent {
  const factory _YearEntered(final int year) = _$YearEnteredImpl;

  int get year;
  @JsonKey(ignore: true)
  _$$YearEnteredImplCopyWith<_$YearEnteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FloraNavigatorState {
  FloraService? get service => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FloraNavigatorStateCopyWith<FloraNavigatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloraNavigatorStateCopyWith<$Res> {
  factory $FloraNavigatorStateCopyWith(
          FloraNavigatorState value, $Res Function(FloraNavigatorState) then) =
      _$FloraNavigatorStateCopyWithImpl<$Res, FloraNavigatorState>;
  @useResult
  $Res call({FloraService? service, int? year});
}

/// @nodoc
class _$FloraNavigatorStateCopyWithImpl<$Res, $Val extends FloraNavigatorState>
    implements $FloraNavigatorStateCopyWith<$Res> {
  _$FloraNavigatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as FloraService?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FloraNavigatorStateImplCopyWith<$Res>
    implements $FloraNavigatorStateCopyWith<$Res> {
  factory _$$FloraNavigatorStateImplCopyWith(_$FloraNavigatorStateImpl value,
          $Res Function(_$FloraNavigatorStateImpl) then) =
      __$$FloraNavigatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FloraService? service, int? year});
}

/// @nodoc
class __$$FloraNavigatorStateImplCopyWithImpl<$Res>
    extends _$FloraNavigatorStateCopyWithImpl<$Res, _$FloraNavigatorStateImpl>
    implements _$$FloraNavigatorStateImplCopyWith<$Res> {
  __$$FloraNavigatorStateImplCopyWithImpl(_$FloraNavigatorStateImpl _value,
      $Res Function(_$FloraNavigatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = freezed,
    Object? year = freezed,
  }) {
    return _then(_$FloraNavigatorStateImpl(
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as FloraService?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FloraNavigatorStateImpl implements _FloraNavigatorState {
  _$FloraNavigatorStateImpl({this.service, this.year});

  @override
  final FloraService? service;
  @override
  final int? year;

  @override
  String toString() {
    return 'FloraNavigatorState(service: $service, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FloraNavigatorStateImpl &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode => Object.hash(runtimeType, service, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FloraNavigatorStateImplCopyWith<_$FloraNavigatorStateImpl> get copyWith =>
      __$$FloraNavigatorStateImplCopyWithImpl<_$FloraNavigatorStateImpl>(
          this, _$identity);
}

abstract class _FloraNavigatorState implements FloraNavigatorState {
  factory _FloraNavigatorState({final FloraService? service, final int? year}) =
      _$FloraNavigatorStateImpl;

  @override
  FloraService? get service;
  @override
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$FloraNavigatorStateImplCopyWith<_$FloraNavigatorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

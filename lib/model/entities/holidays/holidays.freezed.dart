// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'holidays.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HolidaysTearOff {
  const _$HolidaysTearOff();

  _Holidays call({List<Holiday> holidays = const []}) {
    return _Holidays(
      holidays: holidays,
    );
  }
}

/// @nodoc
const $Holidays = _$HolidaysTearOff();

/// @nodoc
mixin _$Holidays {
  List<Holiday> get holidays => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HolidaysCopyWith<Holidays> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidaysCopyWith<$Res> {
  factory $HolidaysCopyWith(Holidays value, $Res Function(Holidays) then) =
      _$HolidaysCopyWithImpl<$Res>;
  $Res call({List<Holiday> holidays});
}

/// @nodoc
class _$HolidaysCopyWithImpl<$Res> implements $HolidaysCopyWith<$Res> {
  _$HolidaysCopyWithImpl(this._value, this._then);

  final Holidays _value;
  // ignore: unused_field
  final $Res Function(Holidays) _then;

  @override
  $Res call({
    Object? holidays = freezed,
  }) {
    return _then(_value.copyWith(
      holidays: holidays == freezed
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<Holiday>,
    ));
  }
}

/// @nodoc
abstract class _$HolidaysCopyWith<$Res> implements $HolidaysCopyWith<$Res> {
  factory _$HolidaysCopyWith(_Holidays value, $Res Function(_Holidays) then) =
      __$HolidaysCopyWithImpl<$Res>;
  @override
  $Res call({List<Holiday> holidays});
}

/// @nodoc
class __$HolidaysCopyWithImpl<$Res> extends _$HolidaysCopyWithImpl<$Res>
    implements _$HolidaysCopyWith<$Res> {
  __$HolidaysCopyWithImpl(_Holidays _value, $Res Function(_Holidays) _then)
      : super(_value, (v) => _then(v as _Holidays));

  @override
  _Holidays get _value => super._value as _Holidays;

  @override
  $Res call({
    Object? holidays = freezed,
  }) {
    return _then(_Holidays(
      holidays: holidays == freezed
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<Holiday>,
    ));
  }
}

/// @nodoc

class _$_Holidays extends _Holidays with DiagnosticableTreeMixin {
  const _$_Holidays({this.holidays = const []}) : super._();

  @JsonKey()
  @override
  final List<Holiday> holidays;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Holidays(holidays: $holidays)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Holidays'))
      ..add(DiagnosticsProperty('holidays', holidays));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Holidays &&
            const DeepCollectionEquality().equals(other.holidays, holidays));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(holidays));

  @JsonKey(ignore: true)
  @override
  _$HolidaysCopyWith<_Holidays> get copyWith =>
      __$HolidaysCopyWithImpl<_Holidays>(this, _$identity);
}

abstract class _Holidays extends Holidays {
  const factory _Holidays({List<Holiday> holidays}) = _$_Holidays;
  const _Holidays._() : super._();

  @override
  List<Holiday> get holidays;
  @override
  @JsonKey(ignore: true)
  _$HolidaysCopyWith<_Holidays> get copyWith =>
      throw _privateConstructorUsedError;
}

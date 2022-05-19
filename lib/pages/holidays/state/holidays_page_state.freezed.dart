// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'holidays_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HolidaysPageStateTearOff {
  const _$HolidaysPageStateTearOff();

  _HolidaysPageState call(
      {required Holidays holidays, dynamic filterMonth = 0}) {
    return _HolidaysPageState(
      holidays: holidays,
      filterMonth: filterMonth,
    );
  }
}

/// @nodoc
const $HolidaysPageState = _$HolidaysPageStateTearOff();

/// @nodoc
mixin _$HolidaysPageState {
  Holidays get holidays => throw _privateConstructorUsedError;
  dynamic get filterMonth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HolidaysPageStateCopyWith<HolidaysPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidaysPageStateCopyWith<$Res> {
  factory $HolidaysPageStateCopyWith(
          HolidaysPageState value, $Res Function(HolidaysPageState) then) =
      _$HolidaysPageStateCopyWithImpl<$Res>;
  $Res call({Holidays holidays, dynamic filterMonth});

  $HolidaysCopyWith<$Res> get holidays;
}

/// @nodoc
class _$HolidaysPageStateCopyWithImpl<$Res>
    implements $HolidaysPageStateCopyWith<$Res> {
  _$HolidaysPageStateCopyWithImpl(this._value, this._then);

  final HolidaysPageState _value;
  // ignore: unused_field
  final $Res Function(HolidaysPageState) _then;

  @override
  $Res call({
    Object? holidays = freezed,
    Object? filterMonth = freezed,
  }) {
    return _then(_value.copyWith(
      holidays: holidays == freezed
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as Holidays,
      filterMonth: filterMonth == freezed
          ? _value.filterMonth
          : filterMonth // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  @override
  $HolidaysCopyWith<$Res> get holidays {
    return $HolidaysCopyWith<$Res>(_value.holidays, (value) {
      return _then(_value.copyWith(holidays: value));
    });
  }
}

/// @nodoc
abstract class _$HolidaysPageStateCopyWith<$Res>
    implements $HolidaysPageStateCopyWith<$Res> {
  factory _$HolidaysPageStateCopyWith(
          _HolidaysPageState value, $Res Function(_HolidaysPageState) then) =
      __$HolidaysPageStateCopyWithImpl<$Res>;
  @override
  $Res call({Holidays holidays, dynamic filterMonth});

  @override
  $HolidaysCopyWith<$Res> get holidays;
}

/// @nodoc
class __$HolidaysPageStateCopyWithImpl<$Res>
    extends _$HolidaysPageStateCopyWithImpl<$Res>
    implements _$HolidaysPageStateCopyWith<$Res> {
  __$HolidaysPageStateCopyWithImpl(
      _HolidaysPageState _value, $Res Function(_HolidaysPageState) _then)
      : super(_value, (v) => _then(v as _HolidaysPageState));

  @override
  _HolidaysPageState get _value => super._value as _HolidaysPageState;

  @override
  $Res call({
    Object? holidays = freezed,
    Object? filterMonth = freezed,
  }) {
    return _then(_HolidaysPageState(
      holidays: holidays == freezed
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as Holidays,
      filterMonth: filterMonth == freezed ? _value.filterMonth : filterMonth,
    ));
  }
}

/// @nodoc

class _$_HolidaysPageState extends _HolidaysPageState
    with DiagnosticableTreeMixin {
  const _$_HolidaysPageState({required this.holidays, this.filterMonth = 0})
      : super._();

  @override
  final Holidays holidays;
  @JsonKey()
  @override
  final dynamic filterMonth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HolidaysPageState(holidays: $holidays, filterMonth: $filterMonth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HolidaysPageState'))
      ..add(DiagnosticsProperty('holidays', holidays))
      ..add(DiagnosticsProperty('filterMonth', filterMonth));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HolidaysPageState &&
            const DeepCollectionEquality().equals(other.holidays, holidays) &&
            const DeepCollectionEquality()
                .equals(other.filterMonth, filterMonth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(holidays),
      const DeepCollectionEquality().hash(filterMonth));

  @JsonKey(ignore: true)
  @override
  _$HolidaysPageStateCopyWith<_HolidaysPageState> get copyWith =>
      __$HolidaysPageStateCopyWithImpl<_HolidaysPageState>(this, _$identity);
}

abstract class _HolidaysPageState extends HolidaysPageState {
  const factory _HolidaysPageState(
      {required Holidays holidays, dynamic filterMonth}) = _$_HolidaysPageState;
  const _HolidaysPageState._() : super._();

  @override
  Holidays get holidays;
  @override
  dynamic get filterMonth;
  @override
  @JsonKey(ignore: true)
  _$HolidaysPageStateCopyWith<_HolidaysPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

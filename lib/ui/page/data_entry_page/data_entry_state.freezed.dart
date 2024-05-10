// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_entry_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataEntryState {
  NameValidator get usernameValidator => throw _privateConstructorUsedError;
  HeightValidator get heightValidator => throw _privateConstructorUsedError;
  WeightValidator get weightValidator => throw _privateConstructorUsedError;
  AgeValidator get ageValidator => throw _privateConstructorUsedError;
  DurationValidator get durationValidator => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataEntryStateCopyWith<DataEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataEntryStateCopyWith<$Res> {
  factory $DataEntryStateCopyWith(
          DataEntryState value, $Res Function(DataEntryState) then) =
      _$DataEntryStateCopyWithImpl<$Res, DataEntryState>;
  @useResult
  $Res call(
      {NameValidator usernameValidator,
      HeightValidator heightValidator,
      WeightValidator weightValidator,
      AgeValidator ageValidator,
      DurationValidator durationValidator,
      Gender? gender,
      bool isValid});
}

/// @nodoc
class _$DataEntryStateCopyWithImpl<$Res, $Val extends DataEntryState>
    implements $DataEntryStateCopyWith<$Res> {
  _$DataEntryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameValidator = null,
    Object? heightValidator = null,
    Object? weightValidator = null,
    Object? ageValidator = null,
    Object? durationValidator = null,
    Object? gender = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      usernameValidator: null == usernameValidator
          ? _value.usernameValidator
          : usernameValidator // ignore: cast_nullable_to_non_nullable
              as NameValidator,
      heightValidator: null == heightValidator
          ? _value.heightValidator
          : heightValidator // ignore: cast_nullable_to_non_nullable
              as HeightValidator,
      weightValidator: null == weightValidator
          ? _value.weightValidator
          : weightValidator // ignore: cast_nullable_to_non_nullable
              as WeightValidator,
      ageValidator: null == ageValidator
          ? _value.ageValidator
          : ageValidator // ignore: cast_nullable_to_non_nullable
              as AgeValidator,
      durationValidator: null == durationValidator
          ? _value.durationValidator
          : durationValidator // ignore: cast_nullable_to_non_nullable
              as DurationValidator,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataEntryStateImplCopyWith<$Res>
    implements $DataEntryStateCopyWith<$Res> {
  factory _$$DataEntryStateImplCopyWith(_$DataEntryStateImpl value,
          $Res Function(_$DataEntryStateImpl) then) =
      __$$DataEntryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NameValidator usernameValidator,
      HeightValidator heightValidator,
      WeightValidator weightValidator,
      AgeValidator ageValidator,
      DurationValidator durationValidator,
      Gender? gender,
      bool isValid});
}

/// @nodoc
class __$$DataEntryStateImplCopyWithImpl<$Res>
    extends _$DataEntryStateCopyWithImpl<$Res, _$DataEntryStateImpl>
    implements _$$DataEntryStateImplCopyWith<$Res> {
  __$$DataEntryStateImplCopyWithImpl(
      _$DataEntryStateImpl _value, $Res Function(_$DataEntryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameValidator = null,
    Object? heightValidator = null,
    Object? weightValidator = null,
    Object? ageValidator = null,
    Object? durationValidator = null,
    Object? gender = freezed,
    Object? isValid = null,
  }) {
    return _then(_$DataEntryStateImpl(
      usernameValidator: null == usernameValidator
          ? _value.usernameValidator
          : usernameValidator // ignore: cast_nullable_to_non_nullable
              as NameValidator,
      heightValidator: null == heightValidator
          ? _value.heightValidator
          : heightValidator // ignore: cast_nullable_to_non_nullable
              as HeightValidator,
      weightValidator: null == weightValidator
          ? _value.weightValidator
          : weightValidator // ignore: cast_nullable_to_non_nullable
              as WeightValidator,
      ageValidator: null == ageValidator
          ? _value.ageValidator
          : ageValidator // ignore: cast_nullable_to_non_nullable
              as AgeValidator,
      durationValidator: null == durationValidator
          ? _value.durationValidator
          : durationValidator // ignore: cast_nullable_to_non_nullable
              as DurationValidator,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DataEntryStateImpl implements _DataEntryState {
  const _$DataEntryStateImpl(
      {this.usernameValidator = const NameValidator.pure(),
      this.heightValidator = const HeightValidator.pure(),
      this.weightValidator = const WeightValidator.pure(),
      this.ageValidator = const AgeValidator.pure(),
      this.durationValidator = const DurationValidator.pure(),
      this.gender = null,
      this.isValid = false});

  @override
  @JsonKey()
  final NameValidator usernameValidator;
  @override
  @JsonKey()
  final HeightValidator heightValidator;
  @override
  @JsonKey()
  final WeightValidator weightValidator;
  @override
  @JsonKey()
  final AgeValidator ageValidator;
  @override
  @JsonKey()
  final DurationValidator durationValidator;
  @override
  @JsonKey()
  final Gender? gender;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'DataEntryState(usernameValidator: $usernameValidator, heightValidator: $heightValidator, weightValidator: $weightValidator, ageValidator: $ageValidator, durationValidator: $durationValidator, gender: $gender, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataEntryStateImpl &&
            (identical(other.usernameValidator, usernameValidator) ||
                other.usernameValidator == usernameValidator) &&
            (identical(other.heightValidator, heightValidator) ||
                other.heightValidator == heightValidator) &&
            (identical(other.weightValidator, weightValidator) ||
                other.weightValidator == weightValidator) &&
            (identical(other.ageValidator, ageValidator) ||
                other.ageValidator == ageValidator) &&
            (identical(other.durationValidator, durationValidator) ||
                other.durationValidator == durationValidator) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      usernameValidator,
      heightValidator,
      weightValidator,
      ageValidator,
      durationValidator,
      gender,
      isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataEntryStateImplCopyWith<_$DataEntryStateImpl> get copyWith =>
      __$$DataEntryStateImplCopyWithImpl<_$DataEntryStateImpl>(
          this, _$identity);
}

abstract class _DataEntryState implements DataEntryState {
  const factory _DataEntryState(
      {final NameValidator usernameValidator,
      final HeightValidator heightValidator,
      final WeightValidator weightValidator,
      final AgeValidator ageValidator,
      final DurationValidator durationValidator,
      final Gender? gender,
      final bool isValid}) = _$DataEntryStateImpl;

  @override
  NameValidator get usernameValidator;
  @override
  HeightValidator get heightValidator;
  @override
  WeightValidator get weightValidator;
  @override
  AgeValidator get ageValidator;
  @override
  DurationValidator get durationValidator;
  @override
  Gender? get gender;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$DataEntryStateImplCopyWith<_$DataEntryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

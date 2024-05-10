// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prediction_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PredictionResultState {
  PredictionResult get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PredictionResultStateCopyWith<PredictionResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionResultStateCopyWith<$Res> {
  factory $PredictionResultStateCopyWith(PredictionResultState value,
          $Res Function(PredictionResultState) then) =
      _$PredictionResultStateCopyWithImpl<$Res, PredictionResultState>;
  @useResult
  $Res call({PredictionResult value});
}

/// @nodoc
class _$PredictionResultStateCopyWithImpl<$Res,
        $Val extends PredictionResultState>
    implements $PredictionResultStateCopyWith<$Res> {
  _$PredictionResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as PredictionResult,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PredictionResultStateImplCopyWith<$Res>
    implements $PredictionResultStateCopyWith<$Res> {
  factory _$$PredictionResultStateImplCopyWith(
          _$PredictionResultStateImpl value,
          $Res Function(_$PredictionResultStateImpl) then) =
      __$$PredictionResultStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PredictionResult value});
}

/// @nodoc
class __$$PredictionResultStateImplCopyWithImpl<$Res>
    extends _$PredictionResultStateCopyWithImpl<$Res,
        _$PredictionResultStateImpl>
    implements _$$PredictionResultStateImplCopyWith<$Res> {
  __$$PredictionResultStateImplCopyWithImpl(_$PredictionResultStateImpl _value,
      $Res Function(_$PredictionResultStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$PredictionResultStateImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as PredictionResult,
    ));
  }
}

/// @nodoc

class _$PredictionResultStateImpl implements _PredictionResultState {
  const _$PredictionResultStateImpl({this.value = PredictionResult.empty});

  @override
  @JsonKey()
  final PredictionResult value;

  @override
  String toString() {
    return 'PredictionResultState(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredictionResultStateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PredictionResultStateImplCopyWith<_$PredictionResultStateImpl>
      get copyWith => __$$PredictionResultStateImplCopyWithImpl<
          _$PredictionResultStateImpl>(this, _$identity);
}

abstract class _PredictionResultState implements PredictionResultState {
  const factory _PredictionResultState({final PredictionResult value}) =
      _$PredictionResultStateImpl;

  @override
  PredictionResult get value;
  @override
  @JsonKey(ignore: true)
  _$$PredictionResultStateImplCopyWith<_$PredictionResultStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

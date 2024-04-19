// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flower_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlowerState {
  ApiRequestStates? get status => throw _privateConstructorUsedError;
  List<Flower> get flowerList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlowerStateCopyWith<FlowerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowerStateCopyWith<$Res> {
  factory $FlowerStateCopyWith(
          FlowerState value, $Res Function(FlowerState) then) =
      _$FlowerStateCopyWithImpl<$Res, FlowerState>;
  @useResult
  $Res call({ApiRequestStates? status, List<Flower> flowerList});
}

/// @nodoc
class _$FlowerStateCopyWithImpl<$Res, $Val extends FlowerState>
    implements $FlowerStateCopyWith<$Res> {
  _$FlowerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? flowerList = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiRequestStates?,
      flowerList: null == flowerList
          ? _value.flowerList
          : flowerList // ignore: cast_nullable_to_non_nullable
              as List<Flower>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlowerStateImplCopyWith<$Res>
    implements $FlowerStateCopyWith<$Res> {
  factory _$$FlowerStateImplCopyWith(
          _$FlowerStateImpl value, $Res Function(_$FlowerStateImpl) then) =
      __$$FlowerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiRequestStates? status, List<Flower> flowerList});
}

/// @nodoc
class __$$FlowerStateImplCopyWithImpl<$Res>
    extends _$FlowerStateCopyWithImpl<$Res, _$FlowerStateImpl>
    implements _$$FlowerStateImplCopyWith<$Res> {
  __$$FlowerStateImplCopyWithImpl(
      _$FlowerStateImpl _value, $Res Function(_$FlowerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? flowerList = null,
  }) {
    return _then(_$FlowerStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiRequestStates?,
      flowerList: null == flowerList
          ? _value._flowerList
          : flowerList // ignore: cast_nullable_to_non_nullable
              as List<Flower>,
    ));
  }
}

/// @nodoc

class _$FlowerStateImpl extends _FlowerState {
  const _$FlowerStateImpl(
      {this.status = ApiRequestStates.initial,
      final List<Flower> flowerList = const []})
      : _flowerList = flowerList,
        super._();

  @override
  @JsonKey()
  final ApiRequestStates? status;
  final List<Flower> _flowerList;
  @override
  @JsonKey()
  List<Flower> get flowerList {
    if (_flowerList is EqualUnmodifiableListView) return _flowerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flowerList);
  }

  @override
  String toString() {
    return 'FlowerState(status: $status, flowerList: $flowerList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlowerStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._flowerList, _flowerList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_flowerList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlowerStateImplCopyWith<_$FlowerStateImpl> get copyWith =>
      __$$FlowerStateImplCopyWithImpl<_$FlowerStateImpl>(this, _$identity);
}

abstract class _FlowerState extends FlowerState {
  const factory _FlowerState(
      {final ApiRequestStates? status,
      final List<Flower> flowerList}) = _$FlowerStateImpl;
  const _FlowerState._() : super._();

  @override
  ApiRequestStates? get status;
  @override
  List<Flower> get flowerList;
  @override
  @JsonKey(ignore: true)
  _$$FlowerStateImplCopyWith<_$FlowerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

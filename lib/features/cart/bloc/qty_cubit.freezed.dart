// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qty_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemQtyState {
  int get qty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemQtyStateCopyWith<ItemQtyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemQtyStateCopyWith<$Res> {
  factory $ItemQtyStateCopyWith(
          ItemQtyState value, $Res Function(ItemQtyState) then) =
      _$ItemQtyStateCopyWithImpl<$Res, ItemQtyState>;
  @useResult
  $Res call({int qty});
}

/// @nodoc
class _$ItemQtyStateCopyWithImpl<$Res, $Val extends ItemQtyState>
    implements $ItemQtyStateCopyWith<$Res> {
  _$ItemQtyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = null,
  }) {
    return _then(_value.copyWith(
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemQtyStateImplCopyWith<$Res>
    implements $ItemQtyStateCopyWith<$Res> {
  factory _$$ItemQtyStateImplCopyWith(
          _$ItemQtyStateImpl value, $Res Function(_$ItemQtyStateImpl) then) =
      __$$ItemQtyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int qty});
}

/// @nodoc
class __$$ItemQtyStateImplCopyWithImpl<$Res>
    extends _$ItemQtyStateCopyWithImpl<$Res, _$ItemQtyStateImpl>
    implements _$$ItemQtyStateImplCopyWith<$Res> {
  __$$ItemQtyStateImplCopyWithImpl(
      _$ItemQtyStateImpl _value, $Res Function(_$ItemQtyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = null,
  }) {
    return _then(_$ItemQtyStateImpl(
      null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ItemQtyStateImpl implements _ItemQtyState {
  const _$ItemQtyStateImpl(this.qty);

  @override
  final int qty;

  @override
  String toString() {
    return 'ItemQtyState(qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemQtyStateImpl &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemQtyStateImplCopyWith<_$ItemQtyStateImpl> get copyWith =>
      __$$ItemQtyStateImplCopyWithImpl<_$ItemQtyStateImpl>(this, _$identity);
}

abstract class _ItemQtyState implements ItemQtyState {
  const factory _ItemQtyState(final int qty) = _$ItemQtyStateImpl;

  @override
  int get qty;
  @override
  @JsonKey(ignore: true)
  _$$ItemQtyStateImplCopyWith<_$ItemQtyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

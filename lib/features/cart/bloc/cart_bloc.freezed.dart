// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItem cartItem) addItem,
    required TResult Function(String itemId) removeItem,
    required TResult Function(String itemId) increaseQty,
    required TResult Function(String itemId) decreaseQty,
    required TResult Function() clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItem cartItem)? addItem,
    TResult? Function(String itemId)? removeItem,
    TResult? Function(String itemId)? increaseQty,
    TResult? Function(String itemId)? decreaseQty,
    TResult? Function()? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItem cartItem)? addItem,
    TResult Function(String itemId)? removeItem,
    TResult Function(String itemId)? increaseQty,
    TResult Function(String itemId)? decreaseQty,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addItem value) addItem,
    required TResult Function(_removeItem value) removeItem,
    required TResult Function(_increaseQty value) increaseQty,
    required TResult Function(_decreaseQty value) decreaseQty,
    required TResult Function(_clearCart value) clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addItem value)? addItem,
    TResult? Function(_removeItem value)? removeItem,
    TResult? Function(_increaseQty value)? increaseQty,
    TResult? Function(_decreaseQty value)? decreaseQty,
    TResult? Function(_clearCart value)? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addItem value)? addItem,
    TResult Function(_removeItem value)? removeItem,
    TResult Function(_increaseQty value)? increaseQty,
    TResult Function(_decreaseQty value)? decreaseQty,
    TResult Function(_clearCart value)? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$addItemImplCopyWith<$Res> {
  factory _$$addItemImplCopyWith(
          _$addItemImpl value, $Res Function(_$addItemImpl) then) =
      __$$addItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartItem cartItem});
}

/// @nodoc
class __$$addItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$addItemImpl>
    implements _$$addItemImplCopyWith<$Res> {
  __$$addItemImplCopyWithImpl(
      _$addItemImpl _value, $Res Function(_$addItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
  }) {
    return _then(_$addItemImpl(
      null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }
}

/// @nodoc

class _$addItemImpl implements _addItem {
  const _$addItemImpl(this.cartItem);

  @override
  final CartItem cartItem;

  @override
  String toString() {
    return 'CartEvent.addItem(cartItem: $cartItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addItemImpl &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addItemImplCopyWith<_$addItemImpl> get copyWith =>
      __$$addItemImplCopyWithImpl<_$addItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItem cartItem) addItem,
    required TResult Function(String itemId) removeItem,
    required TResult Function(String itemId) increaseQty,
    required TResult Function(String itemId) decreaseQty,
    required TResult Function() clearCart,
  }) {
    return addItem(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItem cartItem)? addItem,
    TResult? Function(String itemId)? removeItem,
    TResult? Function(String itemId)? increaseQty,
    TResult? Function(String itemId)? decreaseQty,
    TResult? Function()? clearCart,
  }) {
    return addItem?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItem cartItem)? addItem,
    TResult Function(String itemId)? removeItem,
    TResult Function(String itemId)? increaseQty,
    TResult Function(String itemId)? decreaseQty,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(cartItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addItem value) addItem,
    required TResult Function(_removeItem value) removeItem,
    required TResult Function(_increaseQty value) increaseQty,
    required TResult Function(_decreaseQty value) decreaseQty,
    required TResult Function(_clearCart value) clearCart,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addItem value)? addItem,
    TResult? Function(_removeItem value)? removeItem,
    TResult? Function(_increaseQty value)? increaseQty,
    TResult? Function(_decreaseQty value)? decreaseQty,
    TResult? Function(_clearCart value)? clearCart,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addItem value)? addItem,
    TResult Function(_removeItem value)? removeItem,
    TResult Function(_increaseQty value)? increaseQty,
    TResult Function(_decreaseQty value)? decreaseQty,
    TResult Function(_clearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _addItem implements CartEvent {
  const factory _addItem(final CartItem cartItem) = _$addItemImpl;

  CartItem get cartItem;
  @JsonKey(ignore: true)
  _$$addItemImplCopyWith<_$addItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$removeItemImplCopyWith<$Res> {
  factory _$$removeItemImplCopyWith(
          _$removeItemImpl value, $Res Function(_$removeItemImpl) then) =
      __$$removeItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String itemId});
}

/// @nodoc
class __$$removeItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$removeItemImpl>
    implements _$$removeItemImplCopyWith<$Res> {
  __$$removeItemImplCopyWithImpl(
      _$removeItemImpl _value, $Res Function(_$removeItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
  }) {
    return _then(_$removeItemImpl(
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$removeItemImpl implements _removeItem {
  const _$removeItemImpl(this.itemId);

  @override
  final String itemId;

  @override
  String toString() {
    return 'CartEvent.removeItem(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$removeItemImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$removeItemImplCopyWith<_$removeItemImpl> get copyWith =>
      __$$removeItemImplCopyWithImpl<_$removeItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItem cartItem) addItem,
    required TResult Function(String itemId) removeItem,
    required TResult Function(String itemId) increaseQty,
    required TResult Function(String itemId) decreaseQty,
    required TResult Function() clearCart,
  }) {
    return removeItem(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItem cartItem)? addItem,
    TResult? Function(String itemId)? removeItem,
    TResult? Function(String itemId)? increaseQty,
    TResult? Function(String itemId)? decreaseQty,
    TResult? Function()? clearCart,
  }) {
    return removeItem?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItem cartItem)? addItem,
    TResult Function(String itemId)? removeItem,
    TResult Function(String itemId)? increaseQty,
    TResult Function(String itemId)? decreaseQty,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addItem value) addItem,
    required TResult Function(_removeItem value) removeItem,
    required TResult Function(_increaseQty value) increaseQty,
    required TResult Function(_decreaseQty value) decreaseQty,
    required TResult Function(_clearCart value) clearCart,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addItem value)? addItem,
    TResult? Function(_removeItem value)? removeItem,
    TResult? Function(_increaseQty value)? increaseQty,
    TResult? Function(_decreaseQty value)? decreaseQty,
    TResult? Function(_clearCart value)? clearCart,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addItem value)? addItem,
    TResult Function(_removeItem value)? removeItem,
    TResult Function(_increaseQty value)? increaseQty,
    TResult Function(_decreaseQty value)? decreaseQty,
    TResult Function(_clearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _removeItem implements CartEvent {
  const factory _removeItem(final String itemId) = _$removeItemImpl;

  String get itemId;
  @JsonKey(ignore: true)
  _$$removeItemImplCopyWith<_$removeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$increaseQtyImplCopyWith<$Res> {
  factory _$$increaseQtyImplCopyWith(
          _$increaseQtyImpl value, $Res Function(_$increaseQtyImpl) then) =
      __$$increaseQtyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String itemId});
}

/// @nodoc
class __$$increaseQtyImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$increaseQtyImpl>
    implements _$$increaseQtyImplCopyWith<$Res> {
  __$$increaseQtyImplCopyWithImpl(
      _$increaseQtyImpl _value, $Res Function(_$increaseQtyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
  }) {
    return _then(_$increaseQtyImpl(
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$increaseQtyImpl implements _increaseQty {
  const _$increaseQtyImpl(this.itemId);

  @override
  final String itemId;

  @override
  String toString() {
    return 'CartEvent.increaseQty(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$increaseQtyImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$increaseQtyImplCopyWith<_$increaseQtyImpl> get copyWith =>
      __$$increaseQtyImplCopyWithImpl<_$increaseQtyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItem cartItem) addItem,
    required TResult Function(String itemId) removeItem,
    required TResult Function(String itemId) increaseQty,
    required TResult Function(String itemId) decreaseQty,
    required TResult Function() clearCart,
  }) {
    return increaseQty(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItem cartItem)? addItem,
    TResult? Function(String itemId)? removeItem,
    TResult? Function(String itemId)? increaseQty,
    TResult? Function(String itemId)? decreaseQty,
    TResult? Function()? clearCart,
  }) {
    return increaseQty?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItem cartItem)? addItem,
    TResult Function(String itemId)? removeItem,
    TResult Function(String itemId)? increaseQty,
    TResult Function(String itemId)? decreaseQty,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (increaseQty != null) {
      return increaseQty(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addItem value) addItem,
    required TResult Function(_removeItem value) removeItem,
    required TResult Function(_increaseQty value) increaseQty,
    required TResult Function(_decreaseQty value) decreaseQty,
    required TResult Function(_clearCart value) clearCart,
  }) {
    return increaseQty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addItem value)? addItem,
    TResult? Function(_removeItem value)? removeItem,
    TResult? Function(_increaseQty value)? increaseQty,
    TResult? Function(_decreaseQty value)? decreaseQty,
    TResult? Function(_clearCart value)? clearCart,
  }) {
    return increaseQty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addItem value)? addItem,
    TResult Function(_removeItem value)? removeItem,
    TResult Function(_increaseQty value)? increaseQty,
    TResult Function(_decreaseQty value)? decreaseQty,
    TResult Function(_clearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (increaseQty != null) {
      return increaseQty(this);
    }
    return orElse();
  }
}

abstract class _increaseQty implements CartEvent {
  const factory _increaseQty(final String itemId) = _$increaseQtyImpl;

  String get itemId;
  @JsonKey(ignore: true)
  _$$increaseQtyImplCopyWith<_$increaseQtyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$decreaseQtyImplCopyWith<$Res> {
  factory _$$decreaseQtyImplCopyWith(
          _$decreaseQtyImpl value, $Res Function(_$decreaseQtyImpl) then) =
      __$$decreaseQtyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String itemId});
}

/// @nodoc
class __$$decreaseQtyImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$decreaseQtyImpl>
    implements _$$decreaseQtyImplCopyWith<$Res> {
  __$$decreaseQtyImplCopyWithImpl(
      _$decreaseQtyImpl _value, $Res Function(_$decreaseQtyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
  }) {
    return _then(_$decreaseQtyImpl(
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$decreaseQtyImpl implements _decreaseQty {
  const _$decreaseQtyImpl(this.itemId);

  @override
  final String itemId;

  @override
  String toString() {
    return 'CartEvent.decreaseQty(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$decreaseQtyImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$decreaseQtyImplCopyWith<_$decreaseQtyImpl> get copyWith =>
      __$$decreaseQtyImplCopyWithImpl<_$decreaseQtyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItem cartItem) addItem,
    required TResult Function(String itemId) removeItem,
    required TResult Function(String itemId) increaseQty,
    required TResult Function(String itemId) decreaseQty,
    required TResult Function() clearCart,
  }) {
    return decreaseQty(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItem cartItem)? addItem,
    TResult? Function(String itemId)? removeItem,
    TResult? Function(String itemId)? increaseQty,
    TResult? Function(String itemId)? decreaseQty,
    TResult? Function()? clearCart,
  }) {
    return decreaseQty?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItem cartItem)? addItem,
    TResult Function(String itemId)? removeItem,
    TResult Function(String itemId)? increaseQty,
    TResult Function(String itemId)? decreaseQty,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (decreaseQty != null) {
      return decreaseQty(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addItem value) addItem,
    required TResult Function(_removeItem value) removeItem,
    required TResult Function(_increaseQty value) increaseQty,
    required TResult Function(_decreaseQty value) decreaseQty,
    required TResult Function(_clearCart value) clearCart,
  }) {
    return decreaseQty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addItem value)? addItem,
    TResult? Function(_removeItem value)? removeItem,
    TResult? Function(_increaseQty value)? increaseQty,
    TResult? Function(_decreaseQty value)? decreaseQty,
    TResult? Function(_clearCart value)? clearCart,
  }) {
    return decreaseQty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addItem value)? addItem,
    TResult Function(_removeItem value)? removeItem,
    TResult Function(_increaseQty value)? increaseQty,
    TResult Function(_decreaseQty value)? decreaseQty,
    TResult Function(_clearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (decreaseQty != null) {
      return decreaseQty(this);
    }
    return orElse();
  }
}

abstract class _decreaseQty implements CartEvent {
  const factory _decreaseQty(final String itemId) = _$decreaseQtyImpl;

  String get itemId;
  @JsonKey(ignore: true)
  _$$decreaseQtyImplCopyWith<_$decreaseQtyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$clearCartImplCopyWith<$Res> {
  factory _$$clearCartImplCopyWith(
          _$clearCartImpl value, $Res Function(_$clearCartImpl) then) =
      __$$clearCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$clearCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$clearCartImpl>
    implements _$$clearCartImplCopyWith<$Res> {
  __$$clearCartImplCopyWithImpl(
      _$clearCartImpl _value, $Res Function(_$clearCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$clearCartImpl implements _clearCart {
  const _$clearCartImpl();

  @override
  String toString() {
    return 'CartEvent.clearCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$clearCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItem cartItem) addItem,
    required TResult Function(String itemId) removeItem,
    required TResult Function(String itemId) increaseQty,
    required TResult Function(String itemId) decreaseQty,
    required TResult Function() clearCart,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItem cartItem)? addItem,
    TResult? Function(String itemId)? removeItem,
    TResult? Function(String itemId)? increaseQty,
    TResult? Function(String itemId)? decreaseQty,
    TResult? Function()? clearCart,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItem cartItem)? addItem,
    TResult Function(String itemId)? removeItem,
    TResult Function(String itemId)? increaseQty,
    TResult Function(String itemId)? decreaseQty,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addItem value) addItem,
    required TResult Function(_removeItem value) removeItem,
    required TResult Function(_increaseQty value) increaseQty,
    required TResult Function(_decreaseQty value) decreaseQty,
    required TResult Function(_clearCart value) clearCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addItem value)? addItem,
    TResult? Function(_removeItem value)? removeItem,
    TResult? Function(_increaseQty value)? increaseQty,
    TResult? Function(_decreaseQty value)? decreaseQty,
    TResult? Function(_clearCart value)? clearCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addItem value)? addItem,
    TResult Function(_removeItem value)? removeItem,
    TResult Function(_increaseQty value)? increaseQty,
    TResult Function(_decreaseQty value)? decreaseQty,
    TResult Function(_clearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class _clearCart implements CartEvent {
  const factory _clearCart() = _$clearCartImpl;
}

/// @nodoc
mixin _$CartState {
  List<CartItem> get cartItems => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> cartItems) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> cartItems)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartItems)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({List<CartItem> cartItems});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_value.copyWith(
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartSuccessImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartSuccessImplCopyWith(
          _$CartSuccessImpl value, $Res Function(_$CartSuccessImpl) then) =
      __$$CartSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartItem> cartItems});
}

/// @nodoc
class __$$CartSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartSuccessImpl>
    implements _$$CartSuccessImplCopyWith<$Res> {
  __$$CartSuccessImplCopyWithImpl(
      _$CartSuccessImpl _value, $Res Function(_$CartSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$CartSuccessImpl(
      null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc

class _$CartSuccessImpl implements CartSuccess {
  const _$CartSuccessImpl(final List<CartItem> cartItems)
      : _cartItems = cartItems;

  final List<CartItem> _cartItems;
  @override
  List<CartItem> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState.success(cartItems: $cartItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartSuccessImplCopyWith<_$CartSuccessImpl> get copyWith =>
      __$$CartSuccessImplCopyWithImpl<_$CartSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartItem> cartItems) success,
  }) {
    return success(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartItem> cartItems)? success,
  }) {
    return success?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartItem> cartItems)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CartSuccess implements CartState {
  const factory CartSuccess(final List<CartItem> cartItems) = _$CartSuccessImpl;

  @override
  List<CartItem> get cartItems;
  @override
  @JsonKey(ignore: true)
  _$$CartSuccessImplCopyWith<_$CartSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

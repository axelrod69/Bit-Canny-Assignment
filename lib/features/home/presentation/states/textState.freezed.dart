// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'textState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TextState {

 String? get amount;
/// Create a copy of TextState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextStateCopyWith<TextState> get copyWith => _$TextStateCopyWithImpl<TextState>(this as TextState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextState&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'TextState(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $TextStateCopyWith<$Res>  {
  factory $TextStateCopyWith(TextState value, $Res Function(TextState) _then) = _$TextStateCopyWithImpl;
@useResult
$Res call({
 String? amount
});




}
/// @nodoc
class _$TextStateCopyWithImpl<$Res>
    implements $TextStateCopyWith<$Res> {
  _$TextStateCopyWithImpl(this._self, this._then);

  final TextState _self;
  final $Res Function(TextState) _then;

/// Create a copy of TextState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TextState].
extension TextStatePatterns on TextState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TextState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TextState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TextState value)  $default,){
final _that = this;
switch (_that) {
case _TextState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TextState value)?  $default,){
final _that = this;
switch (_that) {
case _TextState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TextState() when $default != null:
return $default(_that.amount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? amount)  $default,) {final _that = this;
switch (_that) {
case _TextState():
return $default(_that.amount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? amount)?  $default,) {final _that = this;
switch (_that) {
case _TextState() when $default != null:
return $default(_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class _TextState implements TextState {
   _TextState({this.amount});
  

@override final  String? amount;

/// Create a copy of TextState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextStateCopyWith<_TextState> get copyWith => __$TextStateCopyWithImpl<_TextState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextState&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'TextState(amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$TextStateCopyWith<$Res> implements $TextStateCopyWith<$Res> {
  factory _$TextStateCopyWith(_TextState value, $Res Function(_TextState) _then) = __$TextStateCopyWithImpl;
@override @useResult
$Res call({
 String? amount
});




}
/// @nodoc
class __$TextStateCopyWithImpl<$Res>
    implements _$TextStateCopyWith<$Res> {
  __$TextStateCopyWithImpl(this._self, this._then);

  final _TextState _self;
  final $Res Function(_TextState) _then;

/// Create a copy of TextState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,}) {
  return _then(_TextState(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

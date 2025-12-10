// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sliderCardState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SliderCardState {

 List<SliderCardData>? get sliderCardData;
/// Create a copy of SliderCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SliderCardStateCopyWith<SliderCardState> get copyWith => _$SliderCardStateCopyWithImpl<SliderCardState>(this as SliderCardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SliderCardState&&const DeepCollectionEquality().equals(other.sliderCardData, sliderCardData));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sliderCardData));

@override
String toString() {
  return 'SliderCardState(sliderCardData: $sliderCardData)';
}


}

/// @nodoc
abstract mixin class $SliderCardStateCopyWith<$Res>  {
  factory $SliderCardStateCopyWith(SliderCardState value, $Res Function(SliderCardState) _then) = _$SliderCardStateCopyWithImpl;
@useResult
$Res call({
 List<SliderCardData>? sliderCardData
});




}
/// @nodoc
class _$SliderCardStateCopyWithImpl<$Res>
    implements $SliderCardStateCopyWith<$Res> {
  _$SliderCardStateCopyWithImpl(this._self, this._then);

  final SliderCardState _self;
  final $Res Function(SliderCardState) _then;

/// Create a copy of SliderCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sliderCardData = freezed,}) {
  return _then(_self.copyWith(
sliderCardData: freezed == sliderCardData ? _self.sliderCardData : sliderCardData // ignore: cast_nullable_to_non_nullable
as List<SliderCardData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SliderCardState].
extension SliderCardStatePatterns on SliderCardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SliderCardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SliderCardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SliderCardState value)  $default,){
final _that = this;
switch (_that) {
case _SliderCardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SliderCardState value)?  $default,){
final _that = this;
switch (_that) {
case _SliderCardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SliderCardData>? sliderCardData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SliderCardState() when $default != null:
return $default(_that.sliderCardData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SliderCardData>? sliderCardData)  $default,) {final _that = this;
switch (_that) {
case _SliderCardState():
return $default(_that.sliderCardData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SliderCardData>? sliderCardData)?  $default,) {final _that = this;
switch (_that) {
case _SliderCardState() when $default != null:
return $default(_that.sliderCardData);case _:
  return null;

}
}

}

/// @nodoc


class _SliderCardState implements SliderCardState {
   _SliderCardState({final  List<SliderCardData>? sliderCardData}): _sliderCardData = sliderCardData;
  

 final  List<SliderCardData>? _sliderCardData;
@override List<SliderCardData>? get sliderCardData {
  final value = _sliderCardData;
  if (value == null) return null;
  if (_sliderCardData is EqualUnmodifiableListView) return _sliderCardData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SliderCardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SliderCardStateCopyWith<_SliderCardState> get copyWith => __$SliderCardStateCopyWithImpl<_SliderCardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SliderCardState&&const DeepCollectionEquality().equals(other._sliderCardData, _sliderCardData));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sliderCardData));

@override
String toString() {
  return 'SliderCardState(sliderCardData: $sliderCardData)';
}


}

/// @nodoc
abstract mixin class _$SliderCardStateCopyWith<$Res> implements $SliderCardStateCopyWith<$Res> {
  factory _$SliderCardStateCopyWith(_SliderCardState value, $Res Function(_SliderCardState) _then) = __$SliderCardStateCopyWithImpl;
@override @useResult
$Res call({
 List<SliderCardData>? sliderCardData
});




}
/// @nodoc
class __$SliderCardStateCopyWithImpl<$Res>
    implements _$SliderCardStateCopyWith<$Res> {
  __$SliderCardStateCopyWithImpl(this._self, this._then);

  final _SliderCardState _self;
  final $Res Function(_SliderCardState) _then;

/// Create a copy of SliderCardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sliderCardData = freezed,}) {
  return _then(_SliderCardState(
sliderCardData: freezed == sliderCardData ? _self._sliderCardData : sliderCardData // ignore: cast_nullable_to_non_nullable
as List<SliderCardData>?,
  ));
}


}

// dart format on

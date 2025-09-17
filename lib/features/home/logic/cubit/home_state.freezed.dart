// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitialHome value)?  initialhome,TResult Function( GetTopAnimeLoading value)?  getTopAnimeLoading,TResult Function( GetTopAnimeSuccess value)?  getTopAnimeSuccess,TResult Function( GetTopAnimeError value)?  getTopAnimeError,TResult Function( GetNewsHomeLoading value)?  getNewsHomeLoading,TResult Function( GetNewsHomeSuccess value)?  getNewsHomeSuccess,TResult Function( GetNewsHomeError value)?  getNewsHomeError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitialHome() when initialhome != null:
return initialhome(_that);case GetTopAnimeLoading() when getTopAnimeLoading != null:
return getTopAnimeLoading(_that);case GetTopAnimeSuccess() when getTopAnimeSuccess != null:
return getTopAnimeSuccess(_that);case GetTopAnimeError() when getTopAnimeError != null:
return getTopAnimeError(_that);case GetNewsHomeLoading() when getNewsHomeLoading != null:
return getNewsHomeLoading(_that);case GetNewsHomeSuccess() when getNewsHomeSuccess != null:
return getNewsHomeSuccess(_that);case GetNewsHomeError() when getNewsHomeError != null:
return getNewsHomeError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitialHome value)  initialhome,required TResult Function( GetTopAnimeLoading value)  getTopAnimeLoading,required TResult Function( GetTopAnimeSuccess value)  getTopAnimeSuccess,required TResult Function( GetTopAnimeError value)  getTopAnimeError,required TResult Function( GetNewsHomeLoading value)  getNewsHomeLoading,required TResult Function( GetNewsHomeSuccess value)  getNewsHomeSuccess,required TResult Function( GetNewsHomeError value)  getNewsHomeError,}){
final _that = this;
switch (_that) {
case _InitialHome():
return initialhome(_that);case GetTopAnimeLoading():
return getTopAnimeLoading(_that);case GetTopAnimeSuccess():
return getTopAnimeSuccess(_that);case GetTopAnimeError():
return getTopAnimeError(_that);case GetNewsHomeLoading():
return getNewsHomeLoading(_that);case GetNewsHomeSuccess():
return getNewsHomeSuccess(_that);case GetNewsHomeError():
return getNewsHomeError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitialHome value)?  initialhome,TResult? Function( GetTopAnimeLoading value)?  getTopAnimeLoading,TResult? Function( GetTopAnimeSuccess value)?  getTopAnimeSuccess,TResult? Function( GetTopAnimeError value)?  getTopAnimeError,TResult? Function( GetNewsHomeLoading value)?  getNewsHomeLoading,TResult? Function( GetNewsHomeSuccess value)?  getNewsHomeSuccess,TResult? Function( GetNewsHomeError value)?  getNewsHomeError,}){
final _that = this;
switch (_that) {
case _InitialHome() when initialhome != null:
return initialhome(_that);case GetTopAnimeLoading() when getTopAnimeLoading != null:
return getTopAnimeLoading(_that);case GetTopAnimeSuccess() when getTopAnimeSuccess != null:
return getTopAnimeSuccess(_that);case GetTopAnimeError() when getTopAnimeError != null:
return getTopAnimeError(_that);case GetNewsHomeLoading() when getNewsHomeLoading != null:
return getNewsHomeLoading(_that);case GetNewsHomeSuccess() when getNewsHomeSuccess != null:
return getNewsHomeSuccess(_that);case GetNewsHomeError() when getNewsHomeError != null:
return getNewsHomeError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialhome,TResult Function()?  getTopAnimeLoading,TResult Function( GetTopAnimeResponseModel getTopAnimeResponseModel)?  getTopAnimeSuccess,TResult Function( ApiErrorModel error)?  getTopAnimeError,TResult Function()?  getNewsHomeLoading,TResult Function( GetTopAnimeResponseModel getTopAnimeResponseModel)?  getNewsHomeSuccess,TResult Function( ApiErrorModel error)?  getNewsHomeError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitialHome() when initialhome != null:
return initialhome();case GetTopAnimeLoading() when getTopAnimeLoading != null:
return getTopAnimeLoading();case GetTopAnimeSuccess() when getTopAnimeSuccess != null:
return getTopAnimeSuccess(_that.getTopAnimeResponseModel);case GetTopAnimeError() when getTopAnimeError != null:
return getTopAnimeError(_that.error);case GetNewsHomeLoading() when getNewsHomeLoading != null:
return getNewsHomeLoading();case GetNewsHomeSuccess() when getNewsHomeSuccess != null:
return getNewsHomeSuccess(_that.getTopAnimeResponseModel);case GetNewsHomeError() when getNewsHomeError != null:
return getNewsHomeError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialhome,required TResult Function()  getTopAnimeLoading,required TResult Function( GetTopAnimeResponseModel getTopAnimeResponseModel)  getTopAnimeSuccess,required TResult Function( ApiErrorModel error)  getTopAnimeError,required TResult Function()  getNewsHomeLoading,required TResult Function( GetTopAnimeResponseModel getTopAnimeResponseModel)  getNewsHomeSuccess,required TResult Function( ApiErrorModel error)  getNewsHomeError,}) {final _that = this;
switch (_that) {
case _InitialHome():
return initialhome();case GetTopAnimeLoading():
return getTopAnimeLoading();case GetTopAnimeSuccess():
return getTopAnimeSuccess(_that.getTopAnimeResponseModel);case GetTopAnimeError():
return getTopAnimeError(_that.error);case GetNewsHomeLoading():
return getNewsHomeLoading();case GetNewsHomeSuccess():
return getNewsHomeSuccess(_that.getTopAnimeResponseModel);case GetNewsHomeError():
return getNewsHomeError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialhome,TResult? Function()?  getTopAnimeLoading,TResult? Function( GetTopAnimeResponseModel getTopAnimeResponseModel)?  getTopAnimeSuccess,TResult? Function( ApiErrorModel error)?  getTopAnimeError,TResult? Function()?  getNewsHomeLoading,TResult? Function( GetTopAnimeResponseModel getTopAnimeResponseModel)?  getNewsHomeSuccess,TResult? Function( ApiErrorModel error)?  getNewsHomeError,}) {final _that = this;
switch (_that) {
case _InitialHome() when initialhome != null:
return initialhome();case GetTopAnimeLoading() when getTopAnimeLoading != null:
return getTopAnimeLoading();case GetTopAnimeSuccess() when getTopAnimeSuccess != null:
return getTopAnimeSuccess(_that.getTopAnimeResponseModel);case GetTopAnimeError() when getTopAnimeError != null:
return getTopAnimeError(_that.error);case GetNewsHomeLoading() when getNewsHomeLoading != null:
return getNewsHomeLoading();case GetNewsHomeSuccess() when getNewsHomeSuccess != null:
return getNewsHomeSuccess(_that.getTopAnimeResponseModel);case GetNewsHomeError() when getNewsHomeError != null:
return getNewsHomeError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _InitialHome implements HomeState {
  const _InitialHome();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialHome);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initialhome()';
}


}




/// @nodoc


class GetTopAnimeLoading implements HomeState {
  const GetTopAnimeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTopAnimeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.getTopAnimeLoading()';
}


}




/// @nodoc


class GetTopAnimeSuccess implements HomeState {
  const GetTopAnimeSuccess(this.getTopAnimeResponseModel);
  

 final  GetTopAnimeResponseModel getTopAnimeResponseModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTopAnimeSuccessCopyWith<GetTopAnimeSuccess> get copyWith => _$GetTopAnimeSuccessCopyWithImpl<GetTopAnimeSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTopAnimeSuccess&&(identical(other.getTopAnimeResponseModel, getTopAnimeResponseModel) || other.getTopAnimeResponseModel == getTopAnimeResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,getTopAnimeResponseModel);

@override
String toString() {
  return 'HomeState.getTopAnimeSuccess(getTopAnimeResponseModel: $getTopAnimeResponseModel)';
}


}

/// @nodoc
abstract mixin class $GetTopAnimeSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $GetTopAnimeSuccessCopyWith(GetTopAnimeSuccess value, $Res Function(GetTopAnimeSuccess) _then) = _$GetTopAnimeSuccessCopyWithImpl;
@useResult
$Res call({
 GetTopAnimeResponseModel getTopAnimeResponseModel
});




}
/// @nodoc
class _$GetTopAnimeSuccessCopyWithImpl<$Res>
    implements $GetTopAnimeSuccessCopyWith<$Res> {
  _$GetTopAnimeSuccessCopyWithImpl(this._self, this._then);

  final GetTopAnimeSuccess _self;
  final $Res Function(GetTopAnimeSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getTopAnimeResponseModel = null,}) {
  return _then(GetTopAnimeSuccess(
null == getTopAnimeResponseModel ? _self.getTopAnimeResponseModel : getTopAnimeResponseModel // ignore: cast_nullable_to_non_nullable
as GetTopAnimeResponseModel,
  ));
}


}

/// @nodoc


class GetTopAnimeError implements HomeState {
  const GetTopAnimeError(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTopAnimeErrorCopyWith<GetTopAnimeError> get copyWith => _$GetTopAnimeErrorCopyWithImpl<GetTopAnimeError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTopAnimeError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeState.getTopAnimeError(error: $error)';
}


}

/// @nodoc
abstract mixin class $GetTopAnimeErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $GetTopAnimeErrorCopyWith(GetTopAnimeError value, $Res Function(GetTopAnimeError) _then) = _$GetTopAnimeErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$GetTopAnimeErrorCopyWithImpl<$Res>
    implements $GetTopAnimeErrorCopyWith<$Res> {
  _$GetTopAnimeErrorCopyWithImpl(this._self, this._then);

  final GetTopAnimeError _self;
  final $Res Function(GetTopAnimeError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(GetTopAnimeError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class GetNewsHomeLoading implements HomeState {
  const GetNewsHomeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNewsHomeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.getNewsHomeLoading()';
}


}




/// @nodoc


class GetNewsHomeSuccess implements HomeState {
  const GetNewsHomeSuccess(this.getTopAnimeResponseModel);
  

 final  GetTopAnimeResponseModel getTopAnimeResponseModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNewsHomeSuccessCopyWith<GetNewsHomeSuccess> get copyWith => _$GetNewsHomeSuccessCopyWithImpl<GetNewsHomeSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNewsHomeSuccess&&(identical(other.getTopAnimeResponseModel, getTopAnimeResponseModel) || other.getTopAnimeResponseModel == getTopAnimeResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,getTopAnimeResponseModel);

@override
String toString() {
  return 'HomeState.getNewsHomeSuccess(getTopAnimeResponseModel: $getTopAnimeResponseModel)';
}


}

/// @nodoc
abstract mixin class $GetNewsHomeSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $GetNewsHomeSuccessCopyWith(GetNewsHomeSuccess value, $Res Function(GetNewsHomeSuccess) _then) = _$GetNewsHomeSuccessCopyWithImpl;
@useResult
$Res call({
 GetTopAnimeResponseModel getTopAnimeResponseModel
});




}
/// @nodoc
class _$GetNewsHomeSuccessCopyWithImpl<$Res>
    implements $GetNewsHomeSuccessCopyWith<$Res> {
  _$GetNewsHomeSuccessCopyWithImpl(this._self, this._then);

  final GetNewsHomeSuccess _self;
  final $Res Function(GetNewsHomeSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getTopAnimeResponseModel = null,}) {
  return _then(GetNewsHomeSuccess(
null == getTopAnimeResponseModel ? _self.getTopAnimeResponseModel : getTopAnimeResponseModel // ignore: cast_nullable_to_non_nullable
as GetTopAnimeResponseModel,
  ));
}


}

/// @nodoc


class GetNewsHomeError implements HomeState {
  const GetNewsHomeError(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNewsHomeErrorCopyWith<GetNewsHomeError> get copyWith => _$GetNewsHomeErrorCopyWithImpl<GetNewsHomeError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNewsHomeError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeState.getNewsHomeError(error: $error)';
}


}

/// @nodoc
abstract mixin class $GetNewsHomeErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $GetNewsHomeErrorCopyWith(GetNewsHomeError value, $Res Function(GetNewsHomeError) _then) = _$GetNewsHomeErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$GetNewsHomeErrorCopyWithImpl<$Res>
    implements $GetNewsHomeErrorCopyWith<$Res> {
  _$GetNewsHomeErrorCopyWithImpl(this._self, this._then);

  final GetNewsHomeError _self;
  final $Res Function(GetNewsHomeError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(GetNewsHomeError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on

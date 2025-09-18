// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState()';
}


}

/// @nodoc
class $SearchStateCopyWith<$Res>  {
$SearchStateCopyWith(SearchState _, $Res Function(SearchState) __);
}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialSearch value)?  initialSearch,TResult Function( LoadingSearch value)?  loadingSearch,TResult Function( SuccessSearch value)?  successSearch,TResult Function( ErrorSearch value)?  errorSearch,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialSearch() when initialSearch != null:
return initialSearch(_that);case LoadingSearch() when loadingSearch != null:
return loadingSearch(_that);case SuccessSearch() when successSearch != null:
return successSearch(_that);case ErrorSearch() when errorSearch != null:
return errorSearch(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialSearch value)  initialSearch,required TResult Function( LoadingSearch value)  loadingSearch,required TResult Function( SuccessSearch value)  successSearch,required TResult Function( ErrorSearch value)  errorSearch,}){
final _that = this;
switch (_that) {
case InitialSearch():
return initialSearch(_that);case LoadingSearch():
return loadingSearch(_that);case SuccessSearch():
return successSearch(_that);case ErrorSearch():
return errorSearch(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialSearch value)?  initialSearch,TResult? Function( LoadingSearch value)?  loadingSearch,TResult? Function( SuccessSearch value)?  successSearch,TResult? Function( ErrorSearch value)?  errorSearch,}){
final _that = this;
switch (_that) {
case InitialSearch() when initialSearch != null:
return initialSearch(_that);case LoadingSearch() when loadingSearch != null:
return loadingSearch(_that);case SuccessSearch() when successSearch != null:
return successSearch(_that);case ErrorSearch() when errorSearch != null:
return errorSearch(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialSearch,TResult Function()?  loadingSearch,TResult Function( GetTopAnimeResponseModel animes)?  successSearch,TResult Function( ApiErrorModel error)?  errorSearch,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialSearch() when initialSearch != null:
return initialSearch();case LoadingSearch() when loadingSearch != null:
return loadingSearch();case SuccessSearch() when successSearch != null:
return successSearch(_that.animes);case ErrorSearch() when errorSearch != null:
return errorSearch(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialSearch,required TResult Function()  loadingSearch,required TResult Function( GetTopAnimeResponseModel animes)  successSearch,required TResult Function( ApiErrorModel error)  errorSearch,}) {final _that = this;
switch (_that) {
case InitialSearch():
return initialSearch();case LoadingSearch():
return loadingSearch();case SuccessSearch():
return successSearch(_that.animes);case ErrorSearch():
return errorSearch(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialSearch,TResult? Function()?  loadingSearch,TResult? Function( GetTopAnimeResponseModel animes)?  successSearch,TResult? Function( ApiErrorModel error)?  errorSearch,}) {final _that = this;
switch (_that) {
case InitialSearch() when initialSearch != null:
return initialSearch();case LoadingSearch() when loadingSearch != null:
return loadingSearch();case SuccessSearch() when successSearch != null:
return successSearch(_that.animes);case ErrorSearch() when errorSearch != null:
return errorSearch(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class InitialSearch implements SearchState {
  const InitialSearch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialSearch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.initialSearch()';
}


}




/// @nodoc


class LoadingSearch implements SearchState {
  const LoadingSearch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingSearch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.loadingSearch()';
}


}




/// @nodoc


class SuccessSearch implements SearchState {
  const SuccessSearch(this.animes);
  

 final  GetTopAnimeResponseModel animes;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessSearchCopyWith<SuccessSearch> get copyWith => _$SuccessSearchCopyWithImpl<SuccessSearch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessSearch&&(identical(other.animes, animes) || other.animes == animes));
}


@override
int get hashCode => Object.hash(runtimeType,animes);

@override
String toString() {
  return 'SearchState.successSearch(animes: $animes)';
}


}

/// @nodoc
abstract mixin class $SuccessSearchCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $SuccessSearchCopyWith(SuccessSearch value, $Res Function(SuccessSearch) _then) = _$SuccessSearchCopyWithImpl;
@useResult
$Res call({
 GetTopAnimeResponseModel animes
});




}
/// @nodoc
class _$SuccessSearchCopyWithImpl<$Res>
    implements $SuccessSearchCopyWith<$Res> {
  _$SuccessSearchCopyWithImpl(this._self, this._then);

  final SuccessSearch _self;
  final $Res Function(SuccessSearch) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? animes = null,}) {
  return _then(SuccessSearch(
null == animes ? _self.animes : animes // ignore: cast_nullable_to_non_nullable
as GetTopAnimeResponseModel,
  ));
}


}

/// @nodoc


class ErrorSearch implements SearchState {
  const ErrorSearch(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorSearchCopyWith<ErrorSearch> get copyWith => _$ErrorSearchCopyWithImpl<ErrorSearch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSearch&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SearchState.errorSearch(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorSearchCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $ErrorSearchCopyWith(ErrorSearch value, $Res Function(ErrorSearch) _then) = _$ErrorSearchCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});




}
/// @nodoc
class _$ErrorSearchCopyWithImpl<$Res>
    implements $ErrorSearchCopyWith<$Res> {
  _$ErrorSearchCopyWithImpl(this._self, this._then);

  final ErrorSearch _self;
  final $Res Function(ErrorSearch) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorSearch(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on

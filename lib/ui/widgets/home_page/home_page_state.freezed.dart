// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageState {
  SearchRepositoriesQueryParameters get queryParameters =>
      throw _privateConstructorUsedError;
  List<Repository>? get repositories => throw _privateConstructorUsedError;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {SearchRepositoriesQueryParameters queryParameters,
      List<Repository>? repositories});

  $SearchRepositoriesQueryParametersCopyWith<$Res> get queryParameters;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParameters = null,
    Object? repositories = freezed,
  }) {
    return _then(_value.copyWith(
      queryParameters: null == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as SearchRepositoriesQueryParameters,
      repositories: freezed == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<Repository>?,
    ) as $Val);
  }

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchRepositoriesQueryParametersCopyWith<$Res> get queryParameters {
    return $SearchRepositoriesQueryParametersCopyWith<$Res>(
        _value.queryParameters, (value) {
      return _then(_value.copyWith(queryParameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchRepositoriesQueryParameters queryParameters,
      List<Repository>? repositories});

  @override
  $SearchRepositoriesQueryParametersCopyWith<$Res> get queryParameters;
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParameters = null,
    Object? repositories = freezed,
  }) {
    return _then(_$HomePageStateImpl(
      queryParameters: null == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as SearchRepositoriesQueryParameters,
      repositories: freezed == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<Repository>?,
    ));
  }
}

/// @nodoc

class _$HomePageStateImpl implements _HomePageState {
  const _$HomePageStateImpl(
      {this.queryParameters = const SearchRepositoriesQueryParameters(),
      final List<Repository>? repositories})
      : _repositories = repositories;

  @override
  @JsonKey()
  final SearchRepositoriesQueryParameters queryParameters;
  final List<Repository>? _repositories;
  @override
  List<Repository>? get repositories {
    final value = _repositories;
    if (value == null) return null;
    if (_repositories is EqualUnmodifiableListView) return _repositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomePageState(queryParameters: $queryParameters, repositories: $repositories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            (identical(other.queryParameters, queryParameters) ||
                other.queryParameters == queryParameters) &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryParameters,
      const DeepCollectionEquality().hash(_repositories));

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState(
      {final SearchRepositoriesQueryParameters queryParameters,
      final List<Repository>? repositories}) = _$HomePageStateImpl;

  @override
  SearchRepositoriesQueryParameters get queryParameters;
  @override
  List<Repository>? get repositories;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

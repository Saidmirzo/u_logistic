// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  BlocStatus get getAllPostStatus => throw _privateConstructorUsedError;
  BlocStatus get getActiveStatus => throw _privateConstructorUsedError;
  List<PostModel>? get listPosts => throw _privateConstructorUsedError;
  PostModel? get activePost => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {BlocStatus getAllPostStatus,
      BlocStatus getActiveStatus,
      List<PostModel>? listPosts,
      PostModel? activePost,
      String? message});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllPostStatus = null,
    Object? getActiveStatus = null,
    Object? listPosts = freezed,
    Object? activePost = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      getAllPostStatus: null == getAllPostStatus
          ? _value.getAllPostStatus
          : getAllPostStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      getActiveStatus: null == getActiveStatus
          ? _value.getActiveStatus
          : getActiveStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      listPosts: freezed == listPosts
          ? _value.listPosts
          : listPosts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
      activePost: freezed == activePost
          ? _value.activePost
          : activePost // ignore: cast_nullable_to_non_nullable
              as PostModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus getAllPostStatus,
      BlocStatus getActiveStatus,
      List<PostModel>? listPosts,
      PostModel? activePost,
      String? message});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllPostStatus = null,
    Object? getActiveStatus = null,
    Object? listPosts = freezed,
    Object? activePost = freezed,
    Object? message = freezed,
  }) {
    return _then(_$HomeStateImpl(
      getAllPostStatus: null == getAllPostStatus
          ? _value.getAllPostStatus
          : getAllPostStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      getActiveStatus: null == getActiveStatus
          ? _value.getActiveStatus
          : getActiveStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      listPosts: freezed == listPosts
          ? _value._listPosts
          : listPosts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
      activePost: freezed == activePost
          ? _value.activePost
          : activePost // ignore: cast_nullable_to_non_nullable
              as PostModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.getAllPostStatus = BlocStatus.notInitialized,
      this.getActiveStatus = BlocStatus.notFound,
      final List<PostModel>? listPosts,
      this.activePost,
      this.message})
      : _listPosts = listPosts,
        super._();

  @override
  @JsonKey()
  final BlocStatus getAllPostStatus;
  @override
  @JsonKey()
  final BlocStatus getActiveStatus;
  final List<PostModel>? _listPosts;
  @override
  List<PostModel>? get listPosts {
    final value = _listPosts;
    if (value == null) return null;
    if (_listPosts is EqualUnmodifiableListView) return _listPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PostModel? activePost;
  @override
  final String? message;

  @override
  String toString() {
    return 'HomeState(getAllPostStatus: $getAllPostStatus, getActiveStatus: $getActiveStatus, listPosts: $listPosts, activePost: $activePost, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.getAllPostStatus, getAllPostStatus) ||
                other.getAllPostStatus == getAllPostStatus) &&
            (identical(other.getActiveStatus, getActiveStatus) ||
                other.getActiveStatus == getActiveStatus) &&
            const DeepCollectionEquality()
                .equals(other._listPosts, _listPosts) &&
            (identical(other.activePost, activePost) ||
                other.activePost == activePost) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getAllPostStatus,
      getActiveStatus,
      const DeepCollectionEquality().hash(_listPosts),
      activePost,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final BlocStatus getAllPostStatus,
      final BlocStatus getActiveStatus,
      final List<PostModel>? listPosts,
      final PostModel? activePost,
      final String? message}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  BlocStatus get getAllPostStatus;
  @override
  BlocStatus get getActiveStatus;
  @override
  List<PostModel>? get listPosts;
  @override
  PostModel? get activePost;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(BlocStatus.notInitialized) final BlocStatus getAllPostStatus,
    @Default(BlocStatus.notFound) final BlocStatus getActiveStatus,
    final List<PostModel>? listPosts,
    final PostModel? activePost,
    final String? message,
  }) = _HomeState;

  const HomeState._();
}

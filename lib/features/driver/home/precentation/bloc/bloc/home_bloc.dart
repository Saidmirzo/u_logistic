import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mlc_app/config/enums/bloc_status.dart';
import 'package:mlc_app/core/failure_utils.dart';
import 'package:mlc_app/features/auth/domain/auth_locale_repository.dart';
import 'package:mlc_app/features/driver/home/data/model/post_model.dart';
import 'package:mlc_app/features/driver/home/domin/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;
  HomeBloc({
    required this.homeRepository,
  }) : super(const HomeState()) {
    on<HomeEvent>((event, emit) {});
    on<GetAllPostEvent>((event, emit) async {
      emit(state.copyWith(getAllPostStatus: BlocStatus.inProgress));
      final result = await homeRepository.getAllPosts();
      result.fold(
        (l) => emit(
          state.copyWith(
            getAllPostStatus: FailureUtils.getFailurBlocStatus(l),
            message: l.message,
          ),
        ),
        (r) => emit(
          state.copyWith(
            getAllPostStatus: BlocStatus.completed,
            listPosts: r,
          ),
        ),
      );
    });
    on<GetActivePostEvent>(
      (event, emit) async {
        emit(state.copyWith(getActiveStatus: BlocStatus.inProgress));
        final result = await homeRepository.getActivePosts();
        result.fold(
          (l) => emit(state.copyWith(getActiveStatus: BlocStatus.failed)),
          (r) => emit(
            state.copyWith(
              getActiveStatus: BlocStatus.completed,
              activePost: r,
            ),
          ),
        );
      },
    );
  }
}

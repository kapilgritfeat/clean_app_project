import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../global/api_request_state.dart';
import '../repository/flower_repository.dart';

part 'flower_state.dart';

part 'flower_cubit.freezed.dart';

class FlowerCubit extends Cubit<FlowerState> {
  final FlowerRepository repository;

  FlowerCubit(this.repository) : super(const FlowerState()) {
    fetchFlowerList();
  }

  Future<void> fetchFlowerList() async {
    emit(state.copyWith(status: const ApiRequestState.loading()));
    try {
      final flowers = await repository.getFlowers();
      emit(state.copyWith(
          status: ApiRequestState.loaded(flowers)));
    } catch (e) {
      emit(state.copyWith(status: ApiRequestState.error('Error')));
    }
  }
}

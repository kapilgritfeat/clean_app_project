
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../screens/model/Flower.dart';
import '../screens/repository/flower_repository.dart';

part 'flower_state.dart';

part 'flower_cubit.freezed.dart';

class FlowerCubit extends Cubit<FlowerState> {
  final FlowerRepository repository;

  FlowerCubit(this.repository)
      : super(const FlowerState()) {
    _fetchFlowerList();

  }

  Future<void> _fetchFlowerList() async {
    emit(state.copyWith(status: ApiRequestStates.loading));
    try {
      final flowers = await repository.getFlowers();
      emit(state.copyWith(status: ApiRequestStates.success, flowerList: flowers));
    } catch (e) {
      emit(state.copyWith(status: ApiRequestStates.error));
    }
  }
}

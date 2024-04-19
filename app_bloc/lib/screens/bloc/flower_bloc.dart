import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/flower.dart';
import '../repository/flower_repository.dart';

part 'flower_event.dart';

part 'flower_state.dart';

class FlowerBloc extends Bloc<FlowerEvent, FlowerState> {
  final FlowerRepository flowerRepository;

  FlowerBloc(this.flowerRepository) : super(FlowerInitialState()) {
    on<FlowerEvent>(_onGetFlower);
  }

  FutureOr<void> _onGetFlower(
      FlowerEvent event, Emitter<FlowerState> emit) async {
    emit(FlowerInitialState());
    try {
      final flowers = await flowerRepository.getFlowers();
      emit(FlowerLoadedState(flowers));
    } catch (e) {
      emit(FlowerErrorState());
    }
  }
}

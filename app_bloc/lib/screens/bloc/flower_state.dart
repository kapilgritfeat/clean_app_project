part of 'flower_bloc.dart';

sealed class FlowerState extends Equatable {
  const FlowerState();
}

final class FlowerInitialState extends FlowerState {
  @override
  List<Object> get props => [];
}

final class FlowerLoadedState extends FlowerState {
  final List<Flower> flowers;

  const FlowerLoadedState(this.flowers);

  @override
  // TODO: implement props
  List<Object?> get props => [flowers];
}

final class FlowerErrorState extends FlowerState {
  @override
  List<Object> get props => [];
}

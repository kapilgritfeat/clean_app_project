part of 'flower_bloc.dart';

sealed class FlowerEvent extends Equatable {
  const FlowerEvent();
}

class GetFlower extends FlowerEvent{
  @override
  List<Object?> get props => [];

}

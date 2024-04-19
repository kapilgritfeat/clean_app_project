part of 'flower_cubit.dart';

enum ApiRequestStates {
  initial,
  loading,
  success,
  error
}

@freezed
class FlowerState with _$FlowerState {
  const FlowerState._();

  const factory FlowerState(
      {@Default(ApiRequestStates.initial) ApiRequestStates? status,
        @Default([]) List<Flower> flowerList}) = _FlowerState;
}
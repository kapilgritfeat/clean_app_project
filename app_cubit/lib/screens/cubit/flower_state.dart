part of 'flower_cubit.dart';


@freezed
sealed class FlowerState with _$FlowerState {
  const FlowerState._();

  const factory FlowerState(
      {@Default(ApiRequestState.loading()) ApiRequestState status,
    }) = _FlowerState;
}

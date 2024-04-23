import 'package:app_cubit/global/api_request_state.dart';
import 'package:app_cubit/screens/cubit/flower_cubit.dart';
import 'package:app_cubit/screens/model/Flower.dart';
import 'package:app_cubit/screens/repository/flower_repository.dart';
import 'package:bloc_test/bloc_test.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFlowerRepository extends Mock implements FlowerRepository {}

void main() {
  MockFlowerRepository mockFlowerRepository = MockFlowerRepository();

  late FlowerCubit flowerCubit;

  setUp(() {
    flowerCubit = FlowerCubit(mockFlowerRepository);
  });

  // Define mockFlowerList here
  final mockFlowerList = [
    Flower(
      productId: 1,
      category: 'Rose',
      name: 'Red Rose',
      instructions: 'Water regularly',
      photo: 'https://example.com/red_rose.jpg',
      price: 10.99,
    ),
    Flower(
      productId: 2,
      category: 'Tulip',
      name: 'Yellow Tulip',
      instructions: 'Keep in sunlight',
      photo: 'https://example.com/yellow_tulip.jpg',
      price: 8.99,
    ),
  ];

  group('FlowerCubit', () {
    blocTest<FlowerCubit, FlowerState>(
      'emits successful status when fetchFlowerList() called',
      setUp: () {
        when(() => mockFlowerRepository.getFlowers()).thenAnswer((_) async {
          return mockFlowerList;
        });
      },
      build: () => flowerCubit,
      act: (cubit) => cubit.fetchFlowerList(),
      expect: () => <FlowerState>[
        const FlowerState(status: ApiRequestState.loading()),
        FlowerState(status: ApiRequestState.loaded(mockFlowerList)),
      ],
    );

    blocTest<FlowerCubit, FlowerState>(
      'emits failure status when fetchFlowerList() called and throw exception',
      setUp: () {
        when(() => mockFlowerRepository.getFlowers())
            .thenThrow(Exception("Error"));
      },
      build: () => flowerCubit,
      act: (cubit) => cubit.fetchFlowerList(),
      expect: () => <FlowerState>[
        const FlowerState(status: ApiRequestState.loading()),
        const FlowerState(status: ApiRequestState.error('Error')),
      ],
    );
  });
}

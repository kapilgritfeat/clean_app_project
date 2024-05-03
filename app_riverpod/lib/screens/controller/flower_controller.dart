import 'package:app_riverpod/screens/model/flower.dart';
import 'package:app_riverpod/screens/repository/flower_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/*
final flowerRepository = Provider<FlowerRepository>((ref) {
  return FlowerRepositoryImpl();
});

final flowerListProvider = FutureProvider.autoDispose((ref) async {
  final repository = ref.read(flowerRepository);
  final List<Flower> flowerList = await repository.getFlowers();
  return flowerList;
});*/

class FlowerListController extends StateNotifier<AsyncValue<List<Flower>>> {
  final FlowerRepository _repository;
  FlowerListController(this._repository) : super(const AsyncLoading()) {
    getFlowerList();
  }
  Future<void> getFlowerList() async {
    try {
      state = const AsyncLoading();
      final data = await _repository.getFlowers();
      state = AsyncData(data);
    } catch (e) {
      state = AsyncError(e.toString(), StackTrace.empty);
    }
  }
}

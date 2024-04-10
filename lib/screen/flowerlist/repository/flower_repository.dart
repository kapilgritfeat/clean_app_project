import '../model/flower.dart';

abstract class FlowerRepository {
  Future<List<Flower>> getFlowers();
}
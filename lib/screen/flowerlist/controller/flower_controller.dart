import 'dart:async';

import 'package:clean_bloc_sample/screen/flowerlist/repository/flower_repository.dart';

import '../model/flower.dart';

class FlowerController {
  final FlowerRepository repository;

  FlowerController(this.repository);

  Future<List<Flower>> getFlowers() {
    return repository.getFlowers();
  }
}

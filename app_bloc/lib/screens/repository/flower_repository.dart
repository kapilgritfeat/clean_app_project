

import 'package:flutter/material.dart';

import '../model/flower.dart';

@immutable
abstract class FlowerRepository {
  Future<List<Flower>> getFlowers();
}
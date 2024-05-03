

import 'package:flutter/material.dart';

import '../model/Flower.dart';

@immutable
abstract class FlowerRepository {
  Future<List<Flower>> getFlowers();
}
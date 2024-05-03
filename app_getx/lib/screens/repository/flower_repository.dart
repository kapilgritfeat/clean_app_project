

import 'package:flutter/material.dart';

import '../model/flower.dart';

@immutable
abstract class FlowerRepository {
  Future<({bool value,String message,List<Flower> flower,})> getFlowers();
}
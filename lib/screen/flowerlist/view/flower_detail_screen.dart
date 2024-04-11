import 'package:clean_bloc_sample/screen/flowerlist/model/flower.dart';
import 'package:flutter/material.dart';

class FlowerDetailScreen extends StatelessWidget {
  final Flower flower;

  const FlowerDetailScreen({required this.flower, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flower Detail')),
      body: Center(child: Text(flower.name.toString())),
    );
  }
}

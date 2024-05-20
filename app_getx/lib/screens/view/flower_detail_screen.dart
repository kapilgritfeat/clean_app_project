import 'package:app_getx/network/api_paths.dart';
import 'package:flutter/material.dart';
import '../model/flower.dart';

class FlowerDetailScreen extends StatelessWidget {
  final Flower flower;

  const FlowerDetailScreen({required this.flower, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(flower.name.toString())),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            ApiPaths.getPicture(flower.photo.toString()),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Text(flower.name.toString(),
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          Text(flower.instructions.toString(),
              style: const TextStyle(color: Colors.black, fontSize: 12)),
        ],
      ),
    );
  }
}
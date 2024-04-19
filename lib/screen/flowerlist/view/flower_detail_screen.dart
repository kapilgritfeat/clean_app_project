import 'package:clean_bloc_sample/screen/flowerlist/model/flower.dart';
import 'package:flutter/material.dart';

import '../../../network/api_paths.dart';

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

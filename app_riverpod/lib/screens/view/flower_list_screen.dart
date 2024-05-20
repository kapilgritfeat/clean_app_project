import 'package:app_riverpod/screens/controller/flower_controller.dart';
import 'package:app_riverpod/screens/model/flower.dart';
import 'package:app_riverpod/screens/repository/flower_repository.dart';
import 'package:app_riverpod/screens/repository/flower_repositoryimpl.dart';
import 'package:app_riverpod/screens/widget/flower_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlowerListScreen extends StatelessWidget {
  FlowerListScreen({super.key});

  final flowerControllerProvider =
      StateNotifierProvider<FlowerListController, AsyncValue<dynamic>>((ref) {
    final repository = ref.watch(Provider<FlowerRepository>((ref) {
      return FlowerRepositoryImpl();
    }));
    return FlowerListController(repository);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flower List')),
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          final flowerList = ref.watch(flowerControllerProvider);
          return flowerList.when(
              loading: () => const CircularProgressIndicator(),
              data: (data) => flowerListWidget(data),
              error: (error, stackTrace) => Text('Error $error'),
            );
        }),
      ),
    );
  }

  Widget flowerListWidget(List<Flower> flowerList) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        final flower = flowerList[index];
        return FlowerWidget(flower);
      },
      itemCount: flowerList.length,
    );
  }
}


import 'package:app_cubit/cubit/flower_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/Flower.dart';
import '../widget/flower_widget.dart';

class FlowerListScreen extends StatefulWidget {
  const FlowerListScreen({super.key});

  @override
  State<FlowerListScreen> createState() => _FlowerListScreenState();
}

class _FlowerListScreenState extends State<FlowerListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Flower List')),
        body: BlocBuilder<FlowerCubit, FlowerState>(
          builder: (ctx, state) {
            return state.status == TodoStates.loading
                ? const CustomLoadingIndicator()
                : state.todos.isEmpty
                ? const SizedBox.shrink()
                : ListView.builder(
              itemBuilder: (ctx, index) {
                final flower = state.flowers[index];
                return FlowerWidget(flower, () {});
              },
              itemCount: state.flowers.length,
            );
          },
        );
  }

  buildFlowerList(List<Flower> flowerList) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        final flower = flowerList[index];
        return FlowerWidget(flower, () {
          // Navigator.pushNamed(context, Routes.flowerDetail, arguments: flower);
        });
      },
      itemCount: flowerList.length,
    );
  }
}

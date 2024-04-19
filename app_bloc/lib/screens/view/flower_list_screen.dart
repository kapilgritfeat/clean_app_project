import 'package:app_bloc/screens/bloc/flower_bloc.dart';
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
        body: BlocBuilder<FlowerBloc, FlowerState>(
          builder: (context, state) {
            switch (state) {
              case FlowerInitialState():
                return const Center(child: CircularProgressIndicator());

              case FlowerLoadedState():
                return ListView.builder(
                  itemBuilder: (ctx, index) {
                    final flower = state.flowers[index];
                    return FlowerWidget(flower, () {});
                  },
                  itemCount: state.flowers.length,
                );
              case FlowerErrorState():
                return const Text('Error');
            }
          },
        ));
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

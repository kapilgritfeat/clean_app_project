import 'package:app_cubit/screens/cubit/flower_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../global/api_request_state.dart';
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
        appBar: AppBar(title: const Text('Flower List Using Cubit')),
        body: BlocBuilder<FlowerCubit, FlowerState>(
          builder: (ctx, state) {
            return buildBodyWidget(state.status);
          },
        ));
  }

  //switch statement for sealed class ApiRequestState
  //In Dart 3 we don't need the break anymore
  // All the possible cases must be handled else you'll receive an error
  buildBodyWidget(ApiRequestState state) {
    return switch (state) {
      LoadingState() ||
      InitialState() =>
        const Center(child: CircularProgressIndicator()),
    //we can directly destruct the value from the error state directly and use it in our widgets
      ErrorState error => Text(error.message),
    //Guard clause: "when"
      LoadedState(data: final List<Flower> flowerList)
          when flowerList.isNotEmpty =>
        ListView.builder(
          itemBuilder: (ctx, index) {
            final flower = flowerList[index];
            return FlowerWidget(flower, () {});
          },
          itemCount: flowerList.length,
        ),
      LoadedState(data: final List<Flower> flowerList)
          when flowerList.isEmpty =>
        const Center(
          child: Text('No data found.'),
        ),
      LoadedState() => const SizedBox.shrink(),
      };
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

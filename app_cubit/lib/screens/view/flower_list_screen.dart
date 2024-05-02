
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../global/api_request_state.dart';
import '../../utils/api_handle_base_widget.dart';
import '../model/Flower.dart';
import '../widget/flower_widget.dart';
import 'cubit/flower_cubit.dart';

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
    return ApiHandleBaseWidget<Flower>(
      state,
      (flowerList) => buildFlowerList(flowerList),
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

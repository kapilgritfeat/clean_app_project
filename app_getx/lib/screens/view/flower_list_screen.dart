import 'package:app_getx/screens/controller/flower_controller.dart';
import 'package:app_getx/screens/model/flower.dart';
import 'package:app_getx/screens/widget/flower_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlowerListScreen extends GetView<FlowerListController> {
  const FlowerListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getFlowerList();
    return Scaffold(
      appBar: AppBar(title: const Text('Flower List')),
      body: Center(
        child: controller.obx(
          (List<Flower>? state) => flowerListWidget(state!),
          onLoading: const CircularProgressIndicator(),
          onEmpty: const Text('No Flowers available'),
          onError: (error)=>Text('Error: $error'),
        ),
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

  void getFlowerList() {
    controller.getFlowerList();
  }
}

import 'package:app_getx/screens/controller/flower_list_controller.dart';
import 'package:app_getx/screens/model/flower.dart';
import 'package:app_getx/screens/widget/flower_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlowerListScreen extends StatefulWidget {
  const FlowerListScreen({super.key});

  @override
  State<FlowerListScreen> createState() => _FlowerListScreenState();
}

class _FlowerListScreenState extends State<FlowerListScreen> {
  final FlowerListController controller = Get.find();

  @override
  void initState() {
    super.initState();
    getFlowerList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flower List without State Mixin')),
      body: Center(
        child: Obx(() {
          if (controller.isLoading.isTrue) {
            return const CircularProgressIndicator();
          } else {
            if (controller.flowerList.value.value) {
              if (controller.flowerList.value.flowers.isEmpty) {
                return const Text('No Flowers Available');
              } else {
                return flowerListWidget(controller.flowerList.value.flowers);
              }
            } else {
              return Text(controller.flowerList.value.message);
            }
          }
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

  void getFlowerList() {
    controller.getFlowerList();
  }
}

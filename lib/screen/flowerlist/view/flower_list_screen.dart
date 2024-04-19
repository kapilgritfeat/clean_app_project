import 'package:clean_bloc_sample/global/component.dart';
import 'package:clean_bloc_sample/routes/routes.dart';
import 'package:clean_bloc_sample/screen/flowerlist/widget/flower_widget.dart';
import 'package:clean_bloc_sample/utils/snapshot_base_widget.dart';
import 'package:flutter/material.dart';

import '../model/flower.dart';

class FlowerListScreen extends StatefulWidget {
  const FlowerListScreen({super.key});

  @override
  State<FlowerListScreen> createState() => _FlowerListScreenState();
}

class _FlowerListScreenState extends State<FlowerListScreen> {
  var flowerController = Component.instance.flowerController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Flower List')),
        body: FutureBuilder(
          future: flowerController.getFlowers(),
          builder: (ctx, snapshot) {
            return SnapShotBaseWidget(
                snapshot, buildFlowerList(snapshot.data ?? []));
          },
        ));
  }

  buildFlowerList(List<Flower> flowerList) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        final flower = flowerList[index];
        return FlowerWidget(flower, () {
          Navigator.pushNamed(context, Routes.flowerDetail, arguments: flower);
        });
      },
      itemCount: flowerList.length,
    );
  }
}

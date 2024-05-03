library app_getx;

import 'package:app_getx/screens/controller/flower_controller.dart';
import 'package:app_getx/screens/repository/flower_repositoryimpl.dart';
import 'package:app_getx/screens/view/flower_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXAppScreen extends StatelessWidget {
  final FlowerListController controller = Get.put(FlowerListController(FlowerRepositoryImpl()));

  GetXAppScreen({super.key});

  void initState(){}
  @override
  Widget build(BuildContext context) {
    return  const FlowerListScreen();
  }
}


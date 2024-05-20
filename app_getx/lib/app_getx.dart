library app_getx;

import 'package:app_getx/screens/controller/flower_list_controller.dart';
import 'package:app_getx/screens/controller/flower_state_mixin_controller.dart';
import 'package:app_getx/screens/repository/flower_repositoryimpl.dart';
import 'package:app_getx/screens/view/getx_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXAppScreen extends StatelessWidget {
  final FlowerListStateMixinController stateMixinController =
      Get.put(FlowerListStateMixinController(FlowerRepositoryImpl()));
  final FlowerListController flowerListController =
      Get.put(FlowerListController(FlowerRepositoryImpl()));

  GetXAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetxSelectionScreen();
  }
}

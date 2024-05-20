import 'package:app_getx/screens/model/flower.dart';
import 'package:app_getx/screens/view/flower_detail_screen.dart';
import 'package:app_getx/screens/view/flower_list_screen.dart';
import 'package:app_getx/screens/view/flower_list_state_mixin_screen.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  static navigateToFlowerDetailScreen(
      {required BuildContext context, required Flower flower}) {
    return Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => FlowerDetailScreen(flower: flower),
        ));
  }

  static navigateToFlowerListScreenWithStateMixin(
      {required BuildContext context}) {
    return Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => const FlowerListStateMixinScreen(),
        ));
  }

  static navigateToFlowerListScreenWithoutStateMixin(
      {required BuildContext context}) {
    return Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => const FlowerListScreen(),
        ));
  }
}

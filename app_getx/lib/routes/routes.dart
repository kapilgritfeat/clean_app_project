import 'package:app_getx/screens/model/flower.dart';
import 'package:app_getx/screens/view/flower_detail_screen.dart';
import 'package:flutter/cupertino.dart';

class Routes{
  static navigateToFlowerDetailScreen({required BuildContext context,required Flower flower}){
    return Navigator.push(context, CupertinoPageRoute(builder: (context) => FlowerDetailScreen(flower: flower),));
  }
}
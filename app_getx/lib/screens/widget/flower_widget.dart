import 'package:app_getx/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../network/api_paths.dart';
import '../model/flower.dart';

class FlowerWidget extends StatelessWidget {
  final Flower _flower;

  const FlowerWidget(this._flower, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      child: GestureDetector(
        onTap: () {
          Routes.navigateToFlowerDetailScreen(context: context, flower: _flower);
        },
        child: Container(
            margin: const EdgeInsets.only(bottom: 10, top: 10, right: 5),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  child: Image.network(
                    ApiPaths.getPicture(_flower.photo.toString()),
                    width: 110,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      _flower.name.toString(),
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ))
              ],
            )),
      ),
    );
  }
}
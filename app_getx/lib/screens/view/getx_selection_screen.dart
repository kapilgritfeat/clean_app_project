import 'package:app_getx/routes/routes.dart';
import 'package:flutter/material.dart';

class GetxSelectionScreen extends StatelessWidget {
  const GetxSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customButton(
                title: 'With State Mixin',
                onPressed: () {
                  Routes.navigateToFlowerListScreenWithStateMixin(
                      context: context);
                }),
            customButton(
                title: 'Without State Mixin',
                onPressed: () {
                  Routes.navigateToFlowerListScreenWithoutStateMixin(
                      context: context);
                }),
          ],
        ),
      ),
    );
  }

  customButton({required String title, required Function() onPressed}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: MaterialButton(
        onPressed: onPressed,
        color: Colors.blueGrey,
        elevation: 0,
        minWidth: double.infinity,
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

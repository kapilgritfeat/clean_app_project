import 'package:flutter/material.dart';

class SnapShotBaseWidget extends StatelessWidget {
  final AsyncSnapshot snapshot;
  final Widget widget;

  const SnapShotBaseWidget(this.snapshot, this.widget, {super.key});

  @override
  Widget build(BuildContext context) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (snapshot.hasData) {
      return widget;
    } else {
      return const Center(
        child: Text('Error'),
      );
    }
    return const Placeholder();
  }
}

library app_riverpod;

import 'package:app_riverpod/screens/view/flower_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodAppScreen extends StatelessWidget {
  const RiverpodAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ProviderScope(child: FlowerListScreen());
  }
}


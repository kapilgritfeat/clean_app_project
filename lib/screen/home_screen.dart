import 'package:clean_bloc_sample/routes/app_routes.dart';
import 'package:flutter/material.dart';

import '../routes/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.flowerLists);
              },
              child: const Text('Flowers'))
        ],
      ),
    );
  }
}

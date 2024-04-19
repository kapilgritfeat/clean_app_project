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
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.flowerLists);
              },
              child: const Text('Flowers')),
        ),
      ),
    );
  }
}

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
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.flowerLists);
                  },
                  child: const Text('Flowers')),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.blocApp);
                  },
                  child: const Text('with Bloc')),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.riverpodApp);
                  },
                  child: const Text('with Riverpod')),
            ),
          ],
        ),
      ),
    );
  }
}

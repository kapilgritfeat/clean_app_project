import 'package:clean_bloc_sample/global/component.dart';
import 'package:clean_bloc_sample/routes/routes.dart';
import 'package:clean_bloc_sample/screen/flowerlist/controller/flower_controller.dart';
import 'package:clean_bloc_sample/screen/flowerlist/repository/flower_repositoryimpl.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Assign singleton instance of FlowerController
    Component.instance.flowerController =
        FlowerController(FlowerRepositoryImpl());
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, Routes.home);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
            child: CircularProgressIndicator(
          color: Colors.white,
        )),
      ),
    );
  }
}

library app_cubit;


import 'package:app_cubit/screens/cubit/flower_cubit.dart';
import 'package:app_cubit/screens/repository/flower_repositoryimpl.dart';
import 'package:app_cubit/screens/view/flower_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitAppScreen extends StatelessWidget {
  const CubitAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FlowerCubit( FlowerRepositoryImpl()),
      child: const FlowerListScreen(),
    );
  }
}

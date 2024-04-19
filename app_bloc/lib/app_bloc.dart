library app_bloc;

import 'package:app_bloc/screens/bloc/flower_bloc.dart';
import 'package:app_bloc/screens/repository/flower_repositoryimpl.dart';
import 'package:app_bloc/screens/view/flower_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocAppScreen extends StatelessWidget {
  const BlocAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FlowerBloc(FlowerRepositoryImpl())..add(GetFlower()),
      child: const FlowerListScreen(),
    );
  }
}

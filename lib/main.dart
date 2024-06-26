import 'package:clean_bloc_sample/routes/app_routes.dart';
import 'package:clean_bloc_sample/routes/routes.dart';
import 'package:clean_bloc_sample/screen/flowerlist/view/flower_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRoutes.onGeneratedRoutes,
      initialRoute: Routes.splash,
      home: const FlowerListScreen(),
    );
  }
}

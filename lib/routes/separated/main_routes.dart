import 'package:app_bloc/app_bloc.dart';
import 'package:app_riverpod/app_riverpod.dart';
import 'package:clean_bloc_sample/routes/route_type.dart';
import 'package:clean_bloc_sample/routes/routes.dart';
import 'package:clean_bloc_sample/screen/splash/splash_screen.dart';

import '../../screen/home_screen.dart';

Map<String, RouteType> mainRoutes = {
  Routes.home: (context, settings) => const HomeScreen(),
  Routes.splash: (context, settings) => const SplashScreen(),
  Routes.blocApp: (context, settings) => const BlocAppScreen(),
  Routes.riverpodApp: (context, settings) => const RiverpodAppScreen(),
};

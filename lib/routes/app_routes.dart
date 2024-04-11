import 'package:clean_bloc_sample/routes/route_type.dart';
import 'package:clean_bloc_sample/routes/separated/flower_routes.dart';
import 'package:clean_bloc_sample/routes/separated/main_routes.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, RouteType> _resolveRoutes() {
    return {
      ...mainRoutes,
      ...flowerRoutes,
    };
  }

  static Route onGeneratedRoutes(RouteSettings settings) {
    var routes = _resolveRoutes();
    try {
      final child = routes[settings.name];
      Widget builder(BuildContext context) => child!(context, settings);

      return MaterialPageRoute(builder: builder);
    } catch (e) {
      throw const FormatException('Routes doesnot exist');
    }
  }
}

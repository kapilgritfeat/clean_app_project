import 'package:clean_bloc_sample/routes/route_type.dart';
import 'package:clean_bloc_sample/screen/flowerlist/view/flower_list_screen.dart';

import '../../screen/flowerlist/model/flower.dart';
import '../../screen/flowerlist/view/flower_detail_screen.dart';
import '../routes.dart';

Map<String, RouteType> flowerRoutes = {
  Routes.flowerLists: (context, settings) => const FlowerListScreen(),
  Routes.flowerDetail: (context, settings) =>
      FlowerDetailScreen(flower: settings.arguments as Flower),
};

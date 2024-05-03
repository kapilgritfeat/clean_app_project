import 'package:dio/dio.dart';

import '../../../network/dio_client.dart';
import '../../network/api_paths.dart';
import '../model/flower.dart';
import 'flower_repository.dart';

class FlowerRepositoryImpl extends FlowerRepository {
  @override
  Future<List<Flower>> getFlowers() async {
    try {
      final response = await DioClient.instance.get(ApiPaths.flowers);
      final flower = FlowerList.fromJson(response).flowers;
      return flower;
    } on DioException catch (error) {
      throw error.message ?? 'Error';
    }
  }
}

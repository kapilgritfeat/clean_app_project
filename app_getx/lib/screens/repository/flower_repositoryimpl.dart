import 'package:dio/dio.dart';

import '../../../network/dio_client.dart';
import '../../network/api_paths.dart';
import '../model/flower.dart';
import 'flower_repository.dart';

class FlowerRepositoryImpl extends FlowerRepository {
  @override
  Future<({bool value,String message,List<Flower> flower,})> getFlowers() async {
    List<Flower> flowers = [];
    try {
      final response = await DioClient.instance.get(ApiPaths.flowers);
       flowers = FlowerList.fromJson(response).flowers;
      return (value:true,message:'Success',flower:flowers);
    } on DioException catch (error) {
      return (value:false,message:error.message!,flower:flowers);

    }
  }
}

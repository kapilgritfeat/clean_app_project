import 'package:app_getx/screens/model/flower.dart';
import 'package:app_getx/screens/repository/flower_repository.dart';
import 'package:get/get.dart';

class FlowerListController extends GetxController {
  final FlowerRepository _repository;
  Rx<({bool value, String message, List<Flower> flowers})> flowerList =
      (value: false, message: '', flowers: <Flower>[]).obs;
  RxBool isLoading = false.obs;

  FlowerListController(this._repository);

  Future<void> getFlowerList() async {
    isLoading.value = true;
    ({bool value, String message, List<Flower> flowers}) response =
        await _repository.getFlowers();
    flowerList.value = response;
    isLoading.value = false;
  }
}

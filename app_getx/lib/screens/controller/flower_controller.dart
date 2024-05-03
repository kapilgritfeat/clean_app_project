import 'package:app_getx/screens/model/flower.dart';
import 'package:app_getx/screens/repository/flower_repository.dart';
import 'package:get/get.dart';

class FlowerListController extends GetxController
    with StateMixin<List<Flower>> {
  final FlowerRepository _repository;

  FlowerListController(this._repository);

  Future<void> getFlowerList() async {
    change(null, status: RxStatus.loading());
    ({
      bool value,
      String message,
      List<Flower> flower,
    }) response = await _repository.getFlowers();
    if (response.value) {
      if (response.flower.isEmpty) {
        change(null, status: RxStatus.empty());
      } else {
        change(response.flower, status: RxStatus.success());
      }
    } else {
      change(null, status: RxStatus.error(response.message));
    }
  }
}

import 'package:clean_bloc_sample/screen/flowerlist/controller/flower_controller.dart';

class Component {
  Component._();

  static final Component _instance = Component._();

  static Component get instance => _instance;

  late FlowerController flowerController;
}

import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxString name = ''.obs;

  void changeName(String name) {
    this.name = name.obs;
    update();
  }
}

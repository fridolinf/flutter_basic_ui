import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt bottomNavIndex = 0.obs;

  handleOnTab(index) {
    bottomNavIndex.value = index;
  }
}

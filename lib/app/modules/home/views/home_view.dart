import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/app/utils/list.dart';
import 'package:flutter_basic_ui/app/widgets/custom_bottom_navigation/custom_bottom_navigation_bar_view.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Obx(() => SafeArea(
              child: widgetList[controller.bottomNavIndex.value]["component"]
                  as Widget,
            )),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        controller: controller,
      ),
    );
  }
}

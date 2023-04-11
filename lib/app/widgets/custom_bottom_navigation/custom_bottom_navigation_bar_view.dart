import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_basic_ui/app/utils/list.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final HomeController controller; // init types of controller
  const CustomBottomNavigationBar({
    super.key,
    required this.controller, //getting controller props
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[300],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 100, 100, 100),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widgetList.length,
        itemBuilder: (context, index) => Obx(
          () => InkWell(
            onTap: () => controller.handleOnTab(index),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 6, bottom: 6, left: 20, right: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widgetList[index]["icon"] as IconData,
                    color: controller.bottomNavIndex.value ==
                            widgetList[index]["id"]
                        ? Colors.white
                        : Colors.black,
                    size: controller.bottomNavIndex.value ==
                            widgetList[index]["id"]
                        ? 30
                        : 20,
                  ),
                  Text(
                    widgetList[index]["name"].toString(),
                    style: TextStyle(
                      color: controller.bottomNavIndex.value ==
                              widgetList[index]["id"]
                          ? Colors.amber[200]
                          : Colors.black,
                      fontWeight: controller.bottomNavIndex.value ==
                              widgetList[index]["id"]
                          ? FontWeight.bold
                          : FontWeight.normal,
                      fontStyle: controller.bottomNavIndex.value ==
                              widgetList[index]["id"]
                          ? FontStyle.italic
                          : FontStyle.normal,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

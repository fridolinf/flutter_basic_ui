import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridviewEx extends StatelessWidget {
  const GridviewEx({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Text("Grid"),
          SizedBox(
            height: Get.height / 3,
            child: GridView.count(
              // scrollDirection: Axis
              //     .horizontal, //initial is vertical, make children inside gride can scrolling with horizontal or vertical direction
              crossAxisCount: 2, //how much maximum grid in one stack
              padding: const EdgeInsets.all(10), //margin outside the Grid
              mainAxisSpacing: 10, //spacing between column (top bottom)
              crossAxisSpacing: 10, //spacing between row (left right)
              // reverse: true, //will be reverse stack from last children to first children
              children: [
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.black,
                ), //if crossAxisCount is 2 this cointainer will be going to a new column
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Grid Builder"),
          SizedBox(
            height: 300,
            child: GridView.builder(
              itemCount: 30, //length of children
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                /**
                 * @Different is with SliverGridDelegateWithMaxCrossAxisExtent we can initiate max content inside one row on maxCrossAxisExtent
                 * from item count we have 30 items, so in 1 row will be have 10 children of Grid because maxCrossAxisExtent is 10
                 */
                //   const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 2,
                //   mainAxisSpacing: 2,
                //   crossAxisSpacing: 2,
                //   childAspectRatio: 10,
                // ),
                maxCrossAxisExtent: 10,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => Container(
                color: Colors.green,
                height: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

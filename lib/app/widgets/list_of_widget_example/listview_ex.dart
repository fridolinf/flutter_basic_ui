import 'package:flutter/material.dart';

class ListviewEx extends StatelessWidget {
  final List<String> animals = ["Monkey", "Dog", "Bird", "Fish"];
  ListviewEx({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: ListView(
              // ListView is flexible wrapping an any child with height, if you want to make a Row or Column inside a ListView please makesure you wrap with another widget with fixed height
              // padding: EdgeInsets.all(10), //adding padding in outline like an a margin
              // scrollDirection: Axis.vertical, //initial is vertical is scrolling behavior you can add vertical or horizontal, if you want to make horizontal, wrap a Listview with fixed width with like Container or Sizedbox
              // itemExtent: 300, //make all children inside listview to have same height
              // reverse: true, //initial is false, reverse an order of children
              // shrinkWrap: true, //initial is false, it's make height in Listview will be fit to height of all children inside Listview
              // controller: ,//adding a scroll controller
              children: [
                Container(
                  height: 100,
                  color: Colors.black,
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 300,
            child: ListView.builder(
              shrinkWrap:
                  true, //use this for make listview height is fit, because we not insert an height to SizedBox()
              itemCount: animals.length,
              itemBuilder: (context, index) => Text(
                animals[index],
              ),
            ),
          ),
          SizedBox(
            width: 300,
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  const Divider(), //adding an spacing inside children of listview()
              shrinkWrap:
                  true, //use this for make listview height is fit, because we not insert an height to SizedBox()
              itemCount: animals.length,
              itemBuilder: (context, index) => Text(
                animals[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}

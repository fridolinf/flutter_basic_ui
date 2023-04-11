import 'package:flutter/material.dart';

class UseFullWidgetEx extends StatelessWidget {
  const UseFullWidgetEx({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Center(
          child: Text(
              "In this page is will contain very useful and frequently used widgets"),
        ),
        Container(
          padding: const EdgeInsets.all(10), //spacing inside container
          margin: const EdgeInsets.all(10), //spacing outside container
          color: Colors.black,
          height: 10,
        ),
        const Padding(
          /**
           * we can use padding with
           * EdgeInsets.all() //for all top,left,bottom,right
           * and etc, but i think others properties are rarely used
           */
          padding: EdgeInsets.only(
            bottom: 1,
            left: 1,
            top: 3,
            right: 3,
          ),
          child: Text("padding"),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text("Row with Expanded and Flexible"),
        Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
          child: Row(
            // Row will axis direction to horizontal
            // crossAxisAlignment: CrossAxisAlignment
            //     .center, //create a vertical direction to center
            // mainAxisAlignment: MainAxisAlignment
            //     .center, //create a horizontal to center, you can use spaceBetween, spaceArround and etc.
            children: [
              const Text("ROW"),
              // Expanded(
              //   flex:
              //       3, // we can create flex with expanded it's mean expand the child of a row
              //   child: Container(
              //     color: Colors.white,
              //     child: Text("Expanded 1"),
              //   ),
              // ),
              // Expanded(
              //   flex: 2,
              //   child: Container(
              //     color: Colors.blue,
              //     child: Text("Expanded 2"),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.red,
              //     child: Text("Expanded 3"),
              //   ),
              // ),
              Flexible(
                fit: FlexFit
                    .tight, //it's mean to make the flex working, because in Flexible default flex is loose flex will be ignored
                flex: 4,
                child: Container(
                  color: Colors.orange,
                  child: const Text("Flexible 1"),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: Container(
                  color: Colors.teal,
                  child: const Text("Flexible 2"),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text("Column with SizedBox"),
        Container(
          color: Colors.green,
          width: 50,
          height: 50,
          child: Column(
            // Column will axis direction to vertical, in column mostly have same properties like Row()
            crossAxisAlignment: CrossAxisAlignment
                .center, //create a vertical direction to center
            mainAxisAlignment: MainAxisAlignment
                .center, //create a horizontal to center, you can use spaceBetween, spaceArround and etc.
            children: const [
              SizedBox(
                // sizedbox is similiar with container() but for real if you don't want to make any complex box or wrapper for Row() or Column() you will be must make SizedBox()
                width: double
                    .infinity, //it's mean width will be match with width of parent
                child: Text("sizedbox"),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("Stack, Alignment, and Positioned"),
        Container(
          width: 100,
          height: 100,
          color: Colors.black54,
          child: Stack(
            alignment: Alignment.center, //align children of stack
            // fit: StackFit.expand, //same like flexible stack will be ignored all height and width if we don't define it in children or parent, so if we want to expanded the width or height of Stack() we must add fit to StackFit.expand
            // Stack will piled up children from first to last, so Container() with blue colors will be appears at behind others Container()
            children: [
              Positioned(
                bottom: 10, //position from margin bottom 10
                right: 10, //position from margin right 10
                height: 30,
                width: 60,
                child: Container(
                  color: Colors.red,
                  child: const Text(
                    "Positioned Widget",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
              Positioned(
                top: 10, //position from margin bottom 10
                left: 10, //position from margin right 10
                height: 30,
                width: 60,
                child: Container(
                  color: Colors.red[200],
                  child: const Text(
                    "Positioned Widget2",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
              Align(
                // align will be align width and height to parent with fixed size like SizedBox() or Container(), so Stack() cannot wrap the Align()
                alignment: Alignment.topRight,
                child: Container(
                  color: Colors.orangeAccent,
                  width: 50,
                  height: 50,
                  child: const Text(
                    "Aligment Widget",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  color: Colors.blue[300],
                  width: 50,
                  height: 50,
                  child: const Text(
                    "Aligment Widget",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Container(
                height: 170,
                width: 170,
                color: Colors.blue,
              ),
              Container(
                height: 160,
                width: 160,
                color: Colors.yellow,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("Aspect Ratio"),
        Container(
          color: Colors.pink,
          width: double.infinity,
          alignment: Alignment.center,
          height: 200,
          child: Column(
            children: [
              SizedBox(
                height: 30,
                width: 300,
                child: AspectRatio(
                  aspectRatio: 3 /
                      9, //aspect ratio of parent, aspect ration calculate width/height
                  child: Container(
                    color: Colors.blueGrey,
                    child: const Text("Aspect Ratio"),
                  ),
                ),
              ),
              const Card(
                color: Colors.lightGreen,
                shadowColor: Colors.black, //shadow of card
                elevation:
                    30, //elevation is the controller shadow below the card
                margin: EdgeInsets.all(10), //margin outside card
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: Text("Card Widgets"),
                ),
              ),
              Wrap(
                spacing: 30, //spacing between children inside Wrap()
                // alignment: WrapAlignment.spaceBetween,
                // crossAxisAlignment: WrapCrossAlignment.end, // alignment vertical of Wrap() if the direction Axis.horizontal
                runSpacing: 20, //gap of vertical direction
                // direction: Axis.vertical, //direction is will affect the children of Wrap() to Axis direction vertical or horizontal, default is horizontal
                // runAlignment: WrapAlignment.spaceBetween, // aligment of vertical if direction is Axis.vertical
                children: [
                  Container(
                    height: 30,
                    color: Colors.deepOrange,
                    child: const Text("Wrap Widget"),
                  ),
                  const Text("Wrap Widget"),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

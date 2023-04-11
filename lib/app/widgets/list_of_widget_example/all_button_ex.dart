import 'package:flutter/material.dart';

class AllButtonEx extends StatelessWidget {
  const AllButtonEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button on Flutter Widget"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              minimumSize: const Size(
                300,
                30,
              ), //custom size of ElevatedButton
              elevation: 30, //shadow
              textStyle: const TextStyle(
                fontSize: 30,
                // You can change color of inherit colors
              ),
              shape: const CircleBorder(
                side: BorderSide(color: Colors.yellow),
              ), //Elevated button will to circle and have border colors yellow, when using this shape attention to width and height of ElevatedButton
              // const RoundedRectangleBorder(
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(
              //       10,
              //     ),
              //   ),
              // ), //adding a shape for ElevatedButton
            ),
            child: const Text(
              "Elevated",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              // have similar properties to Elevated.styleFrom()
              backgroundColor: Colors.amber,
            ),
            child: const Text("Text"),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              // have similar properties to Elevated.styleFrom()
              backgroundColor: Colors.greenAccent,
            ),
            child: const Text("Outlined"),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.browser_updated_outlined),
            label: const Text("Elevated Button Icon"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
            ),
          ), //make a icon inside Elevated Button
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.green, //text color
            // mini: true, //make a circle smaller
            // shape:
            // RoundedRectangleBorder(side: BorderSide(color: Colors.green)), //Change default shape of FlaotingActionButton
            child: const Text("Floating"),
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: const Text("Floating Extended"),
            icon: const Icon(Icons.flag_outlined),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.border_bottom,
      //       ),
      //     ),
      //   ],
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // We can combine bottomNavigationBar with FLoatingActionButton
      // FloatingActionButtonlocation will be placed to the location we decided between the bottomNavigationBar or any
    );
  }
}

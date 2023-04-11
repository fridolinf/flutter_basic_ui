import 'package:flutter/material.dart';

class DrawerEx extends StatelessWidget {
  const DrawerEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Container(
        color: Colors.brown,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ), //with decoration you can add color to DrawerHeader() or you can use Container too inside child properties
              child: Text("Drawer Header"),
            ),
            ListTile(
              title: Text("Tile 1"),
            ),
            ListTile(
              title: Text("Tile 2"),
            ),
            ListTile(
              title: Text("Tile 3"),
            ),
          ],
        ),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
                //openDrawer using context, you can use this method when you have a drawer created before
                //usually we can using openEndDrawer() for open drawer from right phone
              },
              child: const Text("Open Drawer"));
        },
      ),
    );
  }
}

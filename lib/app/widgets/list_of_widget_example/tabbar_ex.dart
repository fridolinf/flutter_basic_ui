import 'package:flutter/material.dart';

class TabBarEx extends StatefulWidget {
  const TabBarEx({super.key});

  @override
  State<TabBarEx> createState() => _TabBarExState();
}

class _TabBarExState extends State<TabBarEx> with TickerProviderStateMixin {
  // SingleTickerProviderStateMixin will be needed when using AnimationController
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // dispose() method is called when this object is removed from the tree permanently and  used to release the memory allocated

    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Demo Tab"),
            bottom: const TabBar(
                indicatorColor: Colors.black, //bottom off tab color
                indicatorPadding:
                    EdgeInsets.all(5), //padding between indicator and tab
                indicatorSize: TabBarIndicatorSize.label, //width indicator
                indicatorWeight: 30, //indicator weight
                unselectedLabelColor:
                    Colors.red, //when Tab not selected the colors will be red
                // indicator: BoxDecoration(
                //   color: Colors.amber,
                // ), //make custom indicator, when using custom indicator, any indicator properties from Tabbar will be denied
                tabs: [
                  Tab(
                    child: Icon(Icons.safety_check),
                  ),
                  Tab(
                    child: Icon(Icons.safety_check),
                  ),
                  Tab(
                    child: Icon(Icons.safety_check),
                  ),
                  // Tab(
                  //   child: Icon(Icons.safety_check),
                  // ), //you can't make Tab children more than length of DefaultTabController
                ]),
          ),
          body: const TabBarView(children: [
            // TabBarView children cannot more than TabBar length
            Center(
              child: Text("Tabbar 1"),
            ),
            Center(
              child: Text("Tabbar 2"),
            ),
            Center(
              child: Text("Tabbar 3"),
            ),
          ]),
        ),
      ),
    );
  }
}

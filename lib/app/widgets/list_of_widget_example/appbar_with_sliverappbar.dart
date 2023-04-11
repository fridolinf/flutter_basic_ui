import 'package:flutter/material.dart';

class AppbarWithSliverAppBar extends StatelessWidget {
  const AppbarWithSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow, //appbar colour
        title: const Text("Appbar Title"), //appbar title Widget()
        centerTitle: true, //centering title, default is false
        elevation: 39, //shadow outside behind Appbar
        leading: Container(
          color: Colors.black,
          child: const Text("This is leading"),
        ),
        actions: [
          const Icon(
            Icons.abc,
          ),
          const Icon(
            Icons.access_time_outlined,
          ),
          ElevatedButton(
            child: const Text("NEXT PAGE"),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (c1, a1, a2) => const SimpleSliverAppBarWidget(),
                  // c1 is the Context, a1 is the animation1, and a2 is animation2
                  transitionsBuilder: (c1, a1, a2, child) => FadeTransition(
                    // child is widget we want to build or open
                    // we can use SlideTransition() or ScaleTransition() for different transition animation effect
                    opacity: a1,
                    child: child,
                  ),
                  transitionDuration: const Duration(seconds: 2),
                ),
              );
            },
          ),
        ], //list of widget inside Appbar, default rendered on right of Appbar
        toolbarHeight: 90, //height Appbar
        // toolbarOpacity: 1,  //opacity of children inside Appbar, range is 0 ~ 1
      ),
    );
  }
}

class SimpleSliverAppBarWidget extends StatelessWidget {
  const SimpleSliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // the difference between SliverAppBar and Appbar is
            // SliverAppBar can scrollable or collapsible app-bar, SliverAppBar is widget from Material Design Widget
            actions: [
              Container(
                color: Colors.black,
                child: const Text("ACTION"),
              ),
            ],
            expandedHeight: 100, //height off SliverAppBar
            // pinned: true, //make SliverAppBar fixed when body scrolling
            // floating: true, //when you scroll body to top the SliverAppBar will appear
            flexibleSpace: const FlexibleSpaceBar(
              title: Text("Flexible Space"),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (context, index) => SizedBox(
                height: 40,
                child: Text("SLIVER $index"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

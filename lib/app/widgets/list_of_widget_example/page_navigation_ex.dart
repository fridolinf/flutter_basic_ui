import 'package:flutter/material.dart';

class PageNavigationEx extends StatelessWidget {
  const PageNavigationEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE 1"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("NEXT PAGE"),
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (c1, a1, a2) => const PageNavigation2(),
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
      ),
    );
  }
}

class PageNavigation2 extends StatelessWidget {
  const PageNavigation2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // when using push method AppBar will render automatically a back button in top left page
        title: const Text("PAGE 2"),
      ),
      body: Container(
        color: Colors.lightGreenAccent,
        child: const Center(
          child: Text("Page 2"),
        ),
      ),
    );
  }
}

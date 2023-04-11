import 'package:flutter/material.dart';

class StateFullWidgetEx extends StatefulWidget {
  const StateFullWidgetEx({super.key});

  @override
  State<StateFullWidgetEx> createState() => _StateFullWidgetExState();
}

class _StateFullWidgetExState extends State<StateFullWidgetEx> {
  // Statefull is the only one widget can change data in Flutter, but if you using state management like Getx you can use Stateless instead Statefull
  int count = 0;
  @override
  @override
  void initState() {
    super.initState();
    // getting external data, for initial data at statefull Widget
    // lifecycle build()

    // ignore: avoid_print
    _setupFirst().then((value) => print("init success"));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Center(
          child: Text("$count"), //getting value from count data
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            /**
             * Changing value using statefull widget
             */
            setState(() {
              //lifecycle setState() from Statefull
              count++; //lifecycle dispose()
            });
          },
          child: const Text("+"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count--;
            });
          },
          child: const Text("-"),
        )
      ],
    );
  }

  Future _setupFirst() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
  }
}

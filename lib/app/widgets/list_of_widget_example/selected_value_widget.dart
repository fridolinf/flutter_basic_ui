import 'package:flutter/material.dart';

class SelectedValueWidget extends StatefulWidget {
  const SelectedValueWidget({super.key});

  @override
  State<SelectedValueWidget> createState() => _SelectedValueWidgetState();
}

class _SelectedValueWidgetState extends State<SelectedValueWidget> {
  late int selected = 1;
  final List<int> dropdownValues = <int>[1, 2, 3, 4];
  late bool checked = false;
  late bool isSwitch = false;
  late String gender = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selected Widget"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          DropdownButton(
            value: selected,
            icon: const Icon(
                Icons.arrow_drop_down_circle_rounded), //change icon dropdown
            iconSize: 20, //changing icon size
            iconDisabledColor: Colors.red,
            iconEnabledColor: Colors.blue,
            dropdownColor: Colors.cyan, //color of dropdown
            underline: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, strokeAlign: 1),
              ),
            ),
            // menuMaxHeight: 20, //height of menu items inside dropdown button
            style: const TextStyle(
                color: Colors.black), //color of dropdown button value
            items: dropdownValues
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.toString()),
                  ),
                )
                .toList(),
            onChanged: (int? val) {
              setState(() {
                if (val != null) selected = val;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Checkbox(
            activeColor: Colors.green, //color background of checked value
            checkColor: Colors.black, //checked symbol color
            value: checked,
            onChanged: (v) {
              setState(() {
                if (v != null) checked = v;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          RadioListTile(
              title: const Text("Male"),
              subtitle: const Text("a Boy"),
              activeColor: Colors.black,
              contentPadding:
                  const EdgeInsets.all(3), //add padding outside radio
              value: "Male", //value of radio
              groupValue: gender,
              tileColor: Colors.amber, //background color of radio
              onChanged: (val) {
                setState(() {
                  if (val != null) gender = val;
                });
              }),
          RadioListTile(
            title: const Text("Female"),
            subtitle: const Text("a woman"),
            activeColor: Colors.pink,
            contentPadding: const EdgeInsets.all(3),
            value: "Female",
            tileColor: Colors.amber,
            groupValue: gender,
            onChanged: (val) {
              setState(
                () {
                  if (val != null) gender = val;
                },
              );
            },
          ),
          Switch(
            value: isSwitch,
            activeColor: Colors.amber, //color of circle button
            activeTrackColor: Colors.green, //background of track when active
            onChanged: (val) {
              setState(
                () {
                  isSwitch = val;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

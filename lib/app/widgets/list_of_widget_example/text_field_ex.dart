import 'package:flutter/material.dart';

class TextFieldEx extends StatefulWidget {
  const TextFieldEx({super.key});

  @override
  State<TextFieldEx> createState() => _TextFieldExState();
}

class _TextFieldExState extends State<TextFieldEx> {
  // late final TextEditingController _controller;
  FocusNode firstNode = FocusNode();
  FocusNode secondNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // _controller = TextEditingController(text: "Initial value");
  }

  @override
  void dispose() {
    // _controller.dispose();
    super.dispose();
  }

  var str = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field: $str"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                // controller: _controller, // we can handle with controller
                onChanged: (val) {
                  setState(() {
                    str = val;
                  });
                },
                cursorColor: Colors.red,
                focusNode: firstNode, //this features like autofocus
                autocorrect: true, //auto correct word
                textCapitalization: TextCapitalization
                    .characters, //change capitalization when input a letter
                textAlign: TextAlign
                    .end, //change the input values align will appear from where side
                // maxLines:
                //     3, //this makes the Textfield height will be affected to larger
                // obscureText:
                //     true, //default is false, this is for change every letter to be a symbol in screen but not affected to the value
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                // controller: _controller, // we can handle with controller
                // onChanged: (val) {
                //   setState(() {
                //     str = val;
                //   });
                // },
                cursorColor: Colors.red,
                focusNode: secondNode,
                keyboardType: TextInputType.number, //type of keyboard
                decoration: const InputDecoration(
                  hintText: "0666", //placeholder of textfield
                  labelText: "label phone", //textfield label
                  icon: Icon(
                    Icons.boy_outlined,
                  ), //adding icon outside textfield, default position is left
                  prefixIcon: Icon(Icons
                      .woman), //adding icon outside textfield, default position is left
                  border: OutlineInputBorder(), //make textfield bordered
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(
                    secondNode,
                  ); //when click button will be activated autofocus by FocusNode var
                },
                child: const Text("Focus Element"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

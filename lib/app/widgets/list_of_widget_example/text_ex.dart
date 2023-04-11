import 'package:flutter/material.dart';

class TextEx extends StatelessWidget {
  const TextEx({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      //centering all children
      child: Text(
        // "HELLO WORLD HELLO WORLD HELLO WORLD HELLO WORLD HELLO WORLD HELLO WORLD HELLO WORLD", // for overflow example
        "Hello World",
        // maxLines: 1, //An optional maximum number of lines for the text to span, wrapping if necessary. If the text exceeds the given number of lines, it will be truncated according to overflow
        // overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.green, //Colors is from Material dependencies
          wordSpacing: 4, //space between word
          letterSpacing: 2, //space between letter
          decoration: TextDecoration.underline, //text decoration
          fontSize: 30, //font size
          fontWeight: FontWeight.bold, //weight of font
          fontStyle: FontStyle.italic, //styling a font
        ),
      ),
    );
  }
}

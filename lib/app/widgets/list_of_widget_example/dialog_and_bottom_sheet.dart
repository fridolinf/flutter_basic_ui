import 'package:flutter/material.dart';

class DialogAndButtomSheet extends StatefulWidget {
  const DialogAndButtomSheet({super.key});

  @override
  State<DialogAndButtomSheet> createState() => _DialogAndButtomSheetState();
}

class _DialogAndButtomSheetState extends State<DialogAndButtomSheet> {
  //we can change the height of bottomSheet() and generalDialog() by the children so they can't interrupt another Widget()

  _showBottomSheet() {
    // bottom sheet will be appear with animation but will be rendered behind the bottom bar, and in front of the top bar
    showBottomSheet(
      context: context,
      builder: (context) => Container(
        color: Colors.greenAccent,
        child: const Center(child: Text("Bottom Sheet")),
      ),
    );
  }

  _showGeneralDialog() {
    showGeneralDialog(
      // General dialog will be fill all the width and height of the screen
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) => Container(
        color: Colors.deepPurple,
        child: const Center(
          child: Text("General Dialog"),
        ),
      ),
    );
  }

  _showDefaultDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.green,
        elevation: 30,
        shadowColor: Colors.deepOrange,
        // shape: CircleBorder(),//shape of Dialog, but when your child is Wrapper widget like container this shape will be appear behind your children
        child: Container(
          height: 200,
          color: Colors.lightBlue,
          child: const Center(
            child: Text("Simple Dialog"),
          ),
        ),
      ),
    );
  }

  _showSimpleDialog() {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        elevation: 40,
        contentPadding:
            const EdgeInsets.all(30), //padding inside content dialog
        shadowColor: Colors.teal,
        backgroundColor: Colors.amber,
        title: const Center(
          child: Text("Simple Dialog"),
        ),
        titleTextStyle: const TextStyle(color: Colors.red),
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Confirm")),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"))
        ],
      ),
    );
  }

  _showDialog() {
    showDialog(
      context: context,
      barrierColor: Colors.blue,
      barrierDismissible:
          false, //can't click outside dialog, prevent user to close dialog when click at outside dialog or the barrier
      builder: (context) => AlertDialog(
        backgroundColor: Colors.green, //dialog color
        shadowColor: Colors.red, //shadow color
        elevation: 30, //increase shadow outside Dialog
        icon: const Icon(Icons.dangerous),
        iconColor: Colors.red,
        // shape: CircleBorder(), //change shape of Dialog
        titlePadding: const EdgeInsets.all(3),
        title: const Center(
          child: Text("Alert Dialog"),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Confirm")),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dialog and Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showBottomSheet();
          },
          child: Text("Open Dialog"),
        ),
      ),
    );
  }
}

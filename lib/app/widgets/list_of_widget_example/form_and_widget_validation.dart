import 'package:flutter/material.dart';

class FormAndWidgetValidation extends StatefulWidget {
  const FormAndWidgetValidation({super.key});

  @override
  State<FormAndWidgetValidation> createState() =>
      _FormAndWidgetValidationState();
}

class _FormAndWidgetValidationState extends State<FormAndWidgetValidation> {
  final _globeKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form and Widget validation"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Form(
            key: _globeKey,
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(
                  3,
                ),
                focusColor: Colors.amber,
                helperText: "Helper", //helper appear at bottom forn
                hintText: "Hint", //placeholder
                icon: Icon(Icons.auto_fix_normal), //appear on left outside form
                prefixIcon: Icon(
                    Icons.precision_manufacturing), //appear inside left form
                suffixIcon: Icon(Icons.shuffle), //appear inside right form
                suffixText: "Suffix",
                labelText: "Form Validation", //title form
                prefixText: "Prefix",
                counterText: "counter", //appear outside right form
                // counter: Text("-"), //make a custom counter
                // prefix: //custom prefix
                // suffix: //custom suffix
                prefixIconColor: Colors.green,
              ),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "Form cannot null"; //will be adding to error text inside form
                }
                return null;
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _globeKey.currentState!.validate();
              },
              child: const Text("Submit"))
        ],
      ),
    );
  }
}

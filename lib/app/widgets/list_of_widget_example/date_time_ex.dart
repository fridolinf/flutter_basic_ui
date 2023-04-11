import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeEx extends StatefulWidget {
  const DateTimeEx({super.key});

  @override
  State<DateTimeEx> createState() => _DateTimeExState();
}

class _DateTimeExState extends State<DateTimeEx> {
  late DateTime dateTime;
  late int timeStamp;
  late String formatedDateTime;
  late DateTime newDateTime;
  late DateTime selectedDate;
  late TimeOfDay selectedTime;

  @override
  void initState() {
    super.initState();
    dateTime = DateTime.now();
    timeStamp = dateTime.millisecondsSinceEpoch;
    formatedDateTime = DateFormat('yyyy-MM-dd HH:mm:ss').format(
        dateTime); //this is using package intl from flutter pub (See pubspec.yaml)
    newDateTime = DateTime.parse(
        formatedDateTime); //convert from String formated by intl to DateTime again
    selectedDate = DateTime.now();
    selectedTime = const TimeOfDay(hour: 23, minute: 23); //initial time
  }

  _selectedDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      // showing DatePicker on Click
      context: context,
      initialDate: selectedDate, //get initial value
      firstDate: DateTime(2000), //custom firstDate
      lastDate: DateTime(2040), //custom lastDate
    );
    if (pickedDate != null && pickedDate != dateTime) {
      // if date has been picked
      setState(() {
        selectedDate = pickedDate; //change initial date by value on pickedDate
      });
    }
  }

  _selectedTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Time Example"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Text("date-time: $dateTime"),
          Text("time-stamp: $timeStamp"),
          Text("another-time-stamp: $formatedDateTime"),
          Text("new-date-time: $newDateTime"),
          const SizedBox(
            height: 30,
          ),
          const Center(child: Text("HANDLE SELECTED DATE")),
          const SizedBox(
            height: 10,
          ),
          Text("Selected Time: $selectedDate"),
          Text(
              "Formated Selected Time: ${DateFormat('yyyy-mm-dd').format(selectedDate)}"),
          ElevatedButton(
            onPressed: () {
              _selectedDate(context);
            },
            child: const Text("Change Date"),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(child: Text("HANDLE SELECTED TIME")),
          const SizedBox(
            height: 10,
          ),
          Text("Hours: ${selectedTime.hour}"),
          Text("Minutes: ${selectedTime.minute}"),
          ElevatedButton(
            onPressed: () {
              _selectedTime(context);
            },
            child: const Text("Change Time"),
          ),
        ],
      ),
    );
  }
}

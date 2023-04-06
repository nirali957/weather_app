import 'package:flutter/material.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({Key? key}) : super(key: key);

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  List<String> reminderList = [
    "Asteroid",
    "Atomic Bell",
    "Beep Once",
    "Beep - Beep",
    "Chime Time",
    "Comet",
    "Cosmos",
  ];
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_outlined),
        title: const Text("Reminder Ringtone"),
      ),
      body: ListView.builder(
        itemCount: reminderList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.teal.shade100,
              title: Text(reminderList[index]),
              leading: Checkbox(
                checkColor: Colors.white,
                // fillColor: MaterialStateProperty.resolveWith(),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              trailing: const Icon(
                Icons.play_arrow,
              ),
            ),
          );
        },
      ),
    );
  }
}

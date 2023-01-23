import 'package:flutter/material.dart';

class NewReminder extends StatefulWidget {
  const NewReminder({super.key});

  @override
  State<NewReminder> createState() => _NewReminderState();
}

class _NewReminderState extends State<NewReminder> {
  final TextEditingController _titleTextController = TextEditingController();
  final TextEditingController _notesTextController = TextEditingController();

  String _title = "";
  //String _notes = '';

  @override
  void initState() {
    super.initState();
    _titleTextController.addListener(() {
      setState(() {
        _title = _titleTextController.text;
      });
      // _notesTextController.addListener(() {
      //   setState() {
      //     _notes = _notesTextController.text;
      //   }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _titleTextController.dispose();
    _notesTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("New Reminder"),
        backgroundColor: Color.fromARGB(255, 142, 92, 227),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: _titleTextController,
                  decoration: InputDecoration(hintText: 'Add a task'),
                ),
                TextFormField(
                  controller: _notesTextController,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Notes'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

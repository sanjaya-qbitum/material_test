import 'package:flutter/material.dart';

class LearnFluttePage extends StatefulWidget {
  const LearnFluttePage({Key? key}) : super(key: key);

  @override
  State<LearnFluttePage> createState() => _LearnFluttePageState();
}

class _LearnFluttePageState extends State<LearnFluttePage> {
  bool isSwitch = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(); // pop
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              }),
          Checkbox(value: isCheckbox, onChanged: (bool? newBool) {
            setState(() {
              isCheckbox = newBool;
            });
          })
        ],
      ),
    );
  }
}

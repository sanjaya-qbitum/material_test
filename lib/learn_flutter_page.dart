import 'package:flutter/material.dart';

class LearnFluttePage extends StatefulWidget {
  const LearnFluttePage({Key? key}) : super(key: key);

  @override
  State<LearnFluttePage> createState() => _LearnFluttePageState();
}

enum SingingCharacter { lafayette, jefferson }

class _LearnFluttePageState extends State<LearnFluttePage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  bool isRadio = false;
  SingingCharacter? _character = SingingCharacter.lafayette;

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
          Switch.adaptive(

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
          }),
          ListTile(
            title: const Text('Lafayette'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Thomas Jefferson'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

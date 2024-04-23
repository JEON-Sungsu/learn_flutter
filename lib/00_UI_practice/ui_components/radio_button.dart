import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  RadioGroup group = RadioGroup.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          RadioListTile<RadioGroup>(
            title: Text('1번라디오',),
            value: RadioGroup.first,
            groupValue: group,
            onChanged: (RadioGroup? value) {
              setState(() {
                group = value!;
                debugPrint(group.label);
              });
            },
          ),
          RadioListTile<RadioGroup>(
            title: Text('2번라디오'),
            value: RadioGroup.second,
            groupValue: group,
            onChanged: (RadioGroup? value) {
              setState(() {
                group = value!;
                debugPrint(group.label);
              });
            },
          ),
        ],
      ),
    ));
  }
}

enum RadioGroup {
  first('1번'),
  second('2번');

  final String label;

  const RadioGroup(this.label);
}

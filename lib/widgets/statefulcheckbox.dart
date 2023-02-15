import 'package:flutter/material.dart';

bool isChecked = false;

class StatefulCheckbox extends StatefulWidget{
  @override
  State<StatefulCheckbox> createState() => _StatefulCheckbox();
}

class _StatefulCheckbox extends State<StatefulCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
            value: isChecked,
            onChanged: changeCheckboxState
          );
  }

  void changeCheckboxState(bool? value) {
    isChecked = value!;
    setState(() {
          });
  }
}
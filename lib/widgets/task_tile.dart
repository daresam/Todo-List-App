import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function longPressedCallback;

  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.checkBoxCallback,
      this.longPressedCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressedCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCallback,
        ));
  }
}

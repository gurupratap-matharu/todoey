import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.taskTitle, this.isChecked, this.toggleTask, this.deleteTask});

  final bool isChecked;
  final String taskTitle;
  final Function toggleTask;
  final Function deleteTask;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleTask,
      ),
    );
  }
}

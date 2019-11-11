import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: Provider.of<TaskData>(context).taskCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.title,
              isChecked: task.isDone,
              toggleTask: (checkBoxState) {
                taskData.updateTask(task);
              },
              deleteTask: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}

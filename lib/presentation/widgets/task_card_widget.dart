import 'package:flutter/material.dart';

import '../../domain/entities/task.dart';
import 'task_text.dart';

class TaskCard extends StatefulWidget {
  final KTask task;
  final int columnIndex;

  const TaskCard({Key key, @required this.task, @required this.columnIndex})
      : super(key: key);

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Draggable<dynamic>(
        feedback: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.transparent,
          child: Container(
            width: 200.0,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.red),
            child: TaskText(
              title: widget.task.title,
            ),
          ),
        ),
        childWhenDragging: Container(),
        data: {"from": widget.columnIndex, "task": widget.task},
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.red),
          child: TaskText(
            title: widget.task.title,
          ),
        ),
      ),
    );
  }
}

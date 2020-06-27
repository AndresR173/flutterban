import 'package:flutter/material.dart';

import '../../domain/entities/data.dart';
import '../../domain/entities/task.dart';
import 'task_text_widget.dart';

class TaskCard extends StatelessWidget {
  final KTask task;
  final int columnIndex;
  final Function dragListener;

  const TaskCard({
    Key key,
    @required this.task,
    @required this.columnIndex,
    @required this.dragListener,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Listener(
        onPointerMove: (PointerMoveEvent event) {
          dragListener(event);
        },
        child: Draggable<KData>(
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
                title: task.title,
              ),
            ),
          ),
          childWhenDragging: Container(
            padding: const EdgeInsets.all(16.0),
            width: 200.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black12),
          ),
          data: KData(from: columnIndex, task: task),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.red),
            child: TaskText(
              title: task.title,
            ),
          ),
        ),
      ),
    );
  }
}

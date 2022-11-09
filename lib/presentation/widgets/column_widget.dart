import 'package:flutter/material.dart';

import '../../models/models.dart';
import 'card_column.dart';
import 'task_card_widget.dart';

class KanbanColumn extends StatelessWidget {
  final KColumn column;
  final int index;
  final Function dragHandler;
  final Function reorderHandler;
  final Function addTaskHandler;
  final Function(DragUpdateDetails) dragListener;
  final Function deleteItemHandler;

  const KanbanColumn({
    super.key,
    required this.column,
    required this.index,
    required this.dragHandler,
    required this.reorderHandler,
    required this.addTaskHandler,
    required this.dragListener,
    required this.deleteItemHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CardColumn(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildTitleColumn(),
                _buildListItemsColumn(),
                _buildButtonNewTask(index),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: DragTarget<KData>(
            onWillAccept: (data) {
              return true;
            },
            onLeave: (data) {},
            onAccept: (data) {
              if (data.from == index) {
                return;
              }
              dragHandler(data, index);
            },
            builder: (context, accept, reject) {
              return const SizedBox();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTitleColumn() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        column.title,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buildListItemsColumn() {
    return Expanded(
      child: ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          if (newIndex < column.children.length) {
            reorderHandler(oldIndex, newIndex, index);
          }
        },
        children: [
          for (final task in column.children)
            TaskCard(
              key: ValueKey(task),
              task: task,
              columnIndex: index,
              dragListener: dragListener,
              deleteItemHandler: deleteItemHandler,
            )
        ],
      ),
    );
  }

  Widget _buildButtonNewTask(int index) {
    return ListTile(
      dense: true,
      onTap: () {
        addTaskHandler(index);
      },
      leading: const Icon(
        Icons.add_circle_outline,
        color: Colors.black45,
        size: 24.0,
      ),
      title: const Text(
        'Add Task',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black45,
        ),
      ),
    );
  }
}

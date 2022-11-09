import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../../models/models.dart';
import '../widgets/kanban_board.dart';
import 'kanban_board_controller.dart';

class KanbanSetStatePage extends StatefulWidget {
  const KanbanSetStatePage({super.key});

  @override
  _KanbanSetStatePageState createState() => _KanbanSetStatePageState();
}

class _KanbanSetStatePageState extends State<KanbanSetStatePage>
    implements KanbanBoardController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set State'),
      ),
      body: SafeArea(
        child: KanbanBoard(
          columns: columns,
          controller: this,
        ),
      ),
    );
  }

  @override
  void deleteItem(int columnIndex, KTask task) {
    setState(() {
      columns[columnIndex].children.remove(task);
    });
  }

  @override
  void handleReOrder(int oldIndex, int newIndex, int index) {
    setState(() {
      if (oldIndex != newIndex) {
        final task = columns[index].children[oldIndex];
        columns[index].children.remove(task);
        columns[index].children.insert(newIndex, task);
      }
    });
  }

  void handleDrag(KData data, int currentIndex) {
    setState(() {
      columns[data.from].children.remove(data.task);
      columns[currentIndex].children.add(data.task);
    });
  }

  @override
  void addColumn(String title) {
    setState(() {
      columns.add(KColumn(
        title: title,
      ));
    });
  }

  @override
  void addTask(String title, int column) {
    setState(() {
      columns[column].children.add(KTask(title: title));
    });
  }

  @override
  void dragHandler(KData data, int index) {
    setState(() {
      columns[data.from].children.remove(data.task);
      columns[index].children.add(data.task);
    });
  }
}

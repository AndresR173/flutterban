import 'package:Flutterban/presentation/widgets/add_task_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../domain/entities/column.dart';
import '../../domain/entities/data.dart';
import '../../domain/entities/task.dart';
import '../widgets/add_column_widget.dart';
import '../widgets/column_widget.dart';

class KanbanPage extends StatefulWidget {
  const KanbanPage({Key key}) : super(key: key);

  @override
  _KanbanPageState createState() => _KanbanPageState();
}

class _KanbanPageState extends State<KanbanPage> {
  List<KColumn> columns = [
    KColumn(
      title: 'To Do',
      children: [
        KTask(title: 'ToDo 1'),
        KTask(title: 'ToDo 2'),
      ],
    ),
    KColumn(
      title: 'In Progress',
      children: [
        KTask(title: 'ToDo 3'),
      ],
    ),
    KColumn(
      title: 'Done',
      children: [
        KTask(title: 'ToDo 4'),
        KTask(title: 'ToDo 5'),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.white, // Color for Android
          statusBarBrightness:
              Brightness.light // Dark == white status bar -- for IOS.
          ),
    );
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: columns.length + 1,
          itemBuilder: (context, index) {
            if (index == columns.length) {
              return AddColumn(addColumnAction: () => {} /*_showAddColumn()*/);
            } else {
              return KanbanColumn(
                column: columns[index],
                index: index,
                dragHandler: (KData data, int currentIndex) =>
                    _handleDrag(data, currentIndex),
                reorderHandler: (int oldIndex, int newIndex, int columnIndex) =>
                    _handleReOrder(oldIndex, newIndex, columnIndex),
                addTaskHandler: (int index) => _showAddTask(index),
              );
            }
          },
        ),
      ),
    );
  }

  final TextEditingController _cardTextController = TextEditingController();

  void _showAddTask(int index) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => AddTask(
        addTaskHandler: (String title) {
          setState(() {
            columns[index].children.add(KTask(title: title));
          });
        },
      ),
    );
  }

  void _handleReOrder(int oldIndex, int newIndex, int index) {
    if (oldIndex != newIndex) {
      setState(() {
        final task = columns[index].children[oldIndex];
        columns[index].children.remove(task);
        columns[index].children.insert(newIndex, task);
      });
    }
  }

  void _handleDrag(KData data, int currentIndex) {
    setState(() {
      columns[data.from].children.remove(data.task);
      columns[currentIndex].children.add(data.task);
    });
  }
}

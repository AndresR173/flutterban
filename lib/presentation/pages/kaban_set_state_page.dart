import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../data/data.dart';
import '../../models/models.dart';
import '../widgets/add_column_button_widget.dart';
import '../widgets/add_column_widget.dart';
import '../widgets/add_task_widget.dart';
import '../widgets/column_widget.dart';

class KanbanSetStatePage extends StatefulWidget {
  const KanbanSetStatePage({super.key});

  @override
  _KanbanSetStatePageState createState() => _KanbanSetStatePageState();
}

class _KanbanSetStatePageState extends State<KanbanSetStatePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white, // Color for Android
        statusBarBrightness:
            Brightness.light, // Dark == white status bar -- for IOS.
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: columns.length + 1,
          itemBuilder: (context, index) {
            if (index == columns.length) {
              return AddColumnButton(addColumnAction: _showAddColumn);
            } else {
              return KanbanColumn(
                column: columns[index],
                index: index,
                dragHandler: _handleDrag,
                reorderHandler: _handleReOrder,
                addTaskHandler: _showAddTask,
                dragListener: _dragListener,
                deleteItemHandler: _deleteItem,
              );
            }
          },
        ),
      ),
    );
  }

  void _dragListener(PointerMoveEvent event) {
    if (event.position.dx > MediaQuery.of(context).size.width - 20) {
      _scrollController.jumpTo(_scrollController.offset + 10);
    } else if (event.position.dx < 20) {
      _scrollController.jumpTo(_scrollController.offset - 10);
    }
  }

  void _showAddColumn() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => AddColumn(
        addColumnHandler: (String title) {
          setState(() {
            columns.add(KColumn(title: title, children: []));
          });
        },
      ),
    );
  }

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

  void _deleteItem(int columnIndex, KTask task) {
    setState(() {
      columns[columnIndex].children.remove(task);
    });
  }

  // Drag methods

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

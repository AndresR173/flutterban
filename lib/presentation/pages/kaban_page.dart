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
              return AddColumn(addColumnAction: () => _showAddColumn());
            } else {
              return KanbanColumn(
                column: columns[index],
                index: index,
                dragHandler: (KData data, int currentIndex) =>
                    _handleDrag(data, currentIndex),
                reorderHandler: (int oldIndex, int newIndex, int columnIndex) =>
                    _handleReOrder(oldIndex, newIndex, columnIndex),
              );
            }
          },
        ),
      ),
    );
  }

  TextEditingController _cardTextController = TextEditingController();
  TextEditingController _taskTextController = TextEditingController();

  _showAddColumnTask(int index) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Add Card task",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(hintText: "Task Title"),
                  controller: _taskTextController,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _addCardTask(index, _taskTextController.text.trim());
                  },
                  child: Text("Add Task"),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  _showAddColumn() {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Add Column",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Card Title"),
                    controller: _cardTextController,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      _addCard(_cardTextController.text.trim());
                    },
                    child: Text("Add"),
                  ),
                )
              ],
            ),
          );
        });
  }

  _addCard(String text) {
    columns.add(KColumn(title: text, children: []));
    _cardTextController.text = "";
    setState(() {});
  }

  _addCardTask(int index, String text) {
    columns[index].children.add(KTask(title: text));
    _taskTextController.text = "";
    setState(() {});
  }

  _handleReOrder(int oldIndex, int newIndex, int index) {
    if (oldIndex != newIndex) {
      setState(() {
        final task = columns[index].children[oldIndex];
        columns[index].children.remove(task);
        columns[index].children.insert(newIndex, task);
      });
    }
  }

  _handleDrag(KData data, int currentIndex) {
    columns[data.from].children.remove(data.task);
    columns[currentIndex].children.add(data.task);
    setState(() {});
  }

  Widget _buildAddCardTaskWidget(context, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: InkWell(
        onTap: () {
          _showAddColumnTask(index);
        },
        child: Row(
          children: <Widget>[
            Icon(
              Icons.add,
            ),
            SizedBox(
              width: 16.0,
            ),
            Text("Add Card Task"),
          ],
        ),
      ),
    );
  }
}

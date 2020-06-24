import 'package:Flutterban/presentation/widgets/task_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_drag_and_drop/drag_and_drop_list.dart';

import '../../domain/entities/column.dart';
import '../../domain/entities/task.dart';

class KanbanColumn extends StatefulWidget {
  final KColumn column;
  final int index;
  final Function dragHandler;
  final Function reorderHandler;

  const KanbanColumn({
    Key key,
    @required this.column,
    @required this.index,
    @required this.dragHandler,
    @required this.reorderHandler,
  }) : super(key: key);

  @override
  _KanbanColumnState createState() => _KanbanColumnState();
}

class _KanbanColumnState extends State<KanbanColumn> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 300.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 8,
                color: Colors.black12,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          margin: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  widget.column.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                child: DragAndDropList<KTask>(
                  widget.column.children,
                  itemBuilder: (BuildContext context, item) {
                    return TaskCard(task: item, columnIndex: widget.index);
                  },
                  onDragFinish: (oldIndex, newIndex) {
                    widget.reorderHandler(oldIndex, newIndex, widget.index);
                  },
                  canBeDraggedTo: (one, two) => true,
                  dragElevation: 8.0,
                ),
                // By using the default ReorderableListView from Flutter, we can't drag an item out of its container
                // ReorderableListView(
                //   onReorder: (oldIndex, newIndex) {
                //     if (newIndex < widget.column.children.length) {
                //       widget.reorderHandler(oldIndex, newIndex, widget.index);
                //     }
                //   },
                //   children: [
                //     for (final task in widget.column.children)
                //       TaskCard(
                //           key: ValueKey(task),
                //           task: task,
                //           columnIndex: widget.index)
                //   ],
                // ),
              ),
              Center(
                child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Add Task',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          color: Colors.black45,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.black45,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned.fill(
          child: DragTarget<dynamic>(
            onWillAccept: (data) {
              return true;
            },
            onLeave: (data) {},
            onAccept: (data) {
              if (data['from'] == widget.index) {
                return;
              }
              widget.dragHandler(data, widget.index);
            },
            builder: (context, accept, reject) {
              return Container();
            },
          ),
        ),
      ],
    );
  }
}

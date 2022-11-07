import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/kanban_bloc.dart';
import '../../domain/entities/data.dart';
import '../../domain/entities/task.dart';
import '../widgets/add_column_button_widget.dart';
import '../widgets/add_column_widget.dart';
import '../widgets/add_task_widget.dart';
import '../widgets/column_widget.dart';
import '../widgets/loading_widget.dart';

class KanbanPage extends StatefulWidget {
  const KanbanPage({super.key});

  @override
  _KanbanPageState createState() => _KanbanPageState();
}

class _KanbanPageState extends State<KanbanPage> {
  final ScrollController _scrollController = ScrollController();
  late KanbanBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<KanbanBloc>();
  }

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
        child: BlocBuilder<KanbanBloc, KanbanState>(
          builder: (context, state) {
            switch (state.status) {
              case Status.loading:
                return const Center(
                  child: LoadingWidget(),
                );
              case Status.loaded:
                if (state.columns.isNotEmpty) {
                  final columns = state.columns;
                  return ListView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: columns.length + 1,
                    itemBuilder: (context, index) {
                      if (index == columns.length) {
                        return AddColumnButton(
                          addColumnAction: () => _showAddColumn(),
                        );
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
                  );
                } else {
                  return Container();
                }
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
      builder: (context) => AddColumnForm(
        addColumnHandler: (String title) {
          _bloc.add(KanbanEvent.addColumn(title));
        },
      ),
    );
  }

  void _showAddTask(int index) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => AddTaskForm(
        addTaskHandler: (String title) {
          _bloc.add(KanbanEvent.addTask(index, title));
        },
      ),
    );
  }

  void _deleteItem(int columnIndex, KTask task) {
    _bloc.add(KanbanEvent.deleteTask(columnIndex, task));
  }

  // Drag methods

  void _handleReOrder(int oldIndex, int newIndex, int column) {
    _bloc.add(KanbanEvent.reorderTask(column, oldIndex, newIndex));
  }

  void _handleDrag(KData data, int index) {
    _bloc.add(KanbanEvent.moveTask(data, index));
  }
}

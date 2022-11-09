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
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
                  return ListView.separated(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(16),
                    itemCount: columns.length + 1,
                    separatorBuilder: (_, __) => const SizedBox(width: 16),
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
                  return const SizedBox.shrink();
                }
            }
          },
        ),
      ),
    );
  }

  void _dragListener(DragUpdateDetails details) {
    if (details.localPosition.dx > MediaQuery.of(context).size.width - 40) {
      _scrollController.jumpTo(_scrollController.offset + 10);
    } else if (details.localPosition.dx < 20) {
      _scrollController.jumpTo(_scrollController.offset - 10);
    }
  }

  void _showAddColumn() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      builder: (context) => AddColumnForm(
        addColumnHandler: (String title) {
          context.read<KanbanBloc>().add(KanbanEvent.addColumn(title));
        },
      ),
    );
  }

  void _showAddTask(int index) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      builder: (context) => AddTaskForm(
        addTaskHandler: (String title) {
          context.read<KanbanBloc>().add(KanbanEvent.addTask(index, title));
        },
      ),
    );
  }

  void _deleteItem(int columnIndex, KTask task) {
    context.read<KanbanBloc>().add(KanbanEvent.deleteTask(columnIndex, task));
  }

  // Drag methods

  void _handleReOrder(int oldIndex, int newIndex, int column) {
    context
        .read<KanbanBloc>()
        .add(KanbanEvent.reorderTask(column, oldIndex, newIndex));
  }

  void _handleDrag(KData data, int index) {
    context.read<KanbanBloc>().add(KanbanEvent.moveTask(data, index));
  }
}

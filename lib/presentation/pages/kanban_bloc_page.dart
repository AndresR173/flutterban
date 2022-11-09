import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models.dart';
import '../state_managers/bloc/kanban_bloc.dart';
import '../widgets/kanban_board.dart';
import '../widgets/progress_indicator.dart';
import 'kanban_board_controller.dart';

class KanbanBlocPage extends StatefulWidget {
  const KanbanBlocPage({super.key});

  @override
  _KanbanBlocPageState createState() => _KanbanBlocPageState();
}

class _KanbanBlocPageState extends State<KanbanBlocPage>
    implements KanbanBoardController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: SafeArea(
        child: BlocBuilder<KanbanBloc, KanbanState>(
          builder: (context, state) {
            switch (state.status) {
              case Status.loading:
                return const Center(
                  child: CenteredProgressIndicator(),
                );
              case Status.loaded:
                if (state.columns.isNotEmpty) {
                  return KanbanBoard(
                    controller: this,
                    columns: state.columns,
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

  @override
  void deleteItem(int columnIndex, KTask task) {
    context.read<KanbanBloc>().add(KanbanEvent.deleteTask(columnIndex, task));
  }

  @override
  void handleReOrder(int oldIndex, int newIndex, int column) {
    context
        .read<KanbanBloc>()
        .add(KanbanEvent.reorderTask(column, oldIndex, newIndex));
  }

  @override
  void dragHandler(KData data, int index) {
    context.read<KanbanBloc>().add(KanbanEvent.moveTask(data, index));
  }

  @override
  void addColumn(String title) {
    context.read<KanbanBloc>().add(KanbanEvent.addColumn(title));
  }

  @override
  void addTask(String title, int column) {
    context.read<KanbanBloc>().add(KanbanEvent.addTask(column, title));
  }
}

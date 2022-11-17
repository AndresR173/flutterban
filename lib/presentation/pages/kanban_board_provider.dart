import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/models.dart';
import '../state_managers/change_notifier/kanban_board_notifier.dart';
import '../widgets/kanban_board.dart';
import 'kanban_board_controller.dart';

class KanbanBoardProvider extends StatefulWidget {
  const KanbanBoardProvider({super.key});

  @override
  State<KanbanBoardProvider> createState() => _KanbanBoardProviderState();
}

class _KanbanBoardProviderState extends State<KanbanBoardProvider>
    implements KanbanBoardController {
  late KanbanBoardNotifier _notifier;

  @override
  void initState() {
    super.initState();
    _notifier = context.read<KanbanBoardNotifier>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set State'),
      ),
      body: SafeArea(
        child: Consumer<KanbanBoardNotifier>(
          builder: (_, changeNotifier, __) {
            return KanbanBoard(
              columns: changeNotifier.columns,
              controller: this,
            );
          },
        ),
      ),
    );
  }

  @override
  void deleteItem(int columnIndex, KTask task) {
    _notifier.deleteItem(columnIndex, task);
  }

  @override
  void handleReOrder(int oldIndex, int newIndex, int index) {
    _notifier.handleReOrder(oldIndex, newIndex, index);
  }

  @override
  void addColumn(String title) {
    _notifier.addColumn(title);
  }

  @override
  void addTask(String title, int column) {
    _notifier.addTask(title, column);
  }

  @override
  void dragHandler(KData data, int index) {
    _notifier.dragHandler(data, index);
  }
}

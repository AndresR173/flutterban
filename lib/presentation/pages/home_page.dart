import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../state_managers/bloc/kanban_bloc.dart';
import '../state_managers/change_notifier/kanban_board_notifier.dart';
import 'kaban_set_state_page.dart';
import 'kanban_bloc_page.dart';
import 'kanban_board_provider.dart';
import 'kanban_mobx_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State manager showcase'),
      ),
      body: ListView(
        children: [
          _buildListTile(
            title: 'Set State',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const KanbanSetStatePage()),
            ),
          ),
          _buildListTile(
            title: 'Bloc',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) {
                  return BlocProvider(
                    create: (_) {
                      final bloc = KanbanBloc();
                      bloc.add(const KanbanEvent.getColumns());
                      return bloc;
                    },
                    child: const KanbanBlocPage(),
                  );
                },
              ),
            ),
          ),
          _buildListTile(
            title: 'MobX',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => KanbanMobxPage()),
            ),
          ),
          _buildListTile(
            title: 'Change Notifier',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ChangeNotifierProvider(
                  create: (context) => KanbanBoardNotifier(),
                  child: const KanbanBoardProvider(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile({required String title, required VoidCallback onTap}) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
      trailing: const Icon(Icons.chevron_right),
    );
  }
}

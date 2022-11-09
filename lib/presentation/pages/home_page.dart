import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state_managers/bloc/kanban_bloc.dart';
import 'kaban_set_state_page.dart';
import 'kanban_bloc_page.dart';
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

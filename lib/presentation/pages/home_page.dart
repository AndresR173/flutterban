import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state_managers/bloc/kanban_bloc.dart';
import 'kaban_set_state_page.dart';
import 'kanban_bloc_page.dart';

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
          ListTile(
            title: const Text('Set State'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const KanbanSetStatePage()),
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            title: const Text('Bloc'),
            trailing: const Icon(Icons.chevron_right),
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
        ],
      ),
    );
  }
}

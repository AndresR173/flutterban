import 'package:flutter/material.dart';

import 'card_column.dart';

class AddColumnButton extends StatelessWidget {
  final Function addColumnAction;

  const AddColumnButton({super.key, required this.addColumnAction});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CardColumn(
        child: ListTile(
          onTap: () => addColumnAction(),
          leading: const Icon(Icons.add),
          title: const Text("Add Column"),
        ),
      ),
    );
  }
}

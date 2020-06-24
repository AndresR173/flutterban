import 'package:flutter/material.dart';

class AddColumn extends StatefulWidget {
  final Function addColumnAction;

  const AddColumn({Key key, @required this.addColumnAction}) : super(key: key);

  @override
  _AddColumnState createState() => _AddColumnState();
}

class _AddColumnState extends State<AddColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            widget.addColumnAction();
          },
          child: Container(
            width: 300.0,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    blurRadius: 8,
                    color: Color.fromRGBO(127, 140, 141, 0.5),
                    spreadRadius: 2),
              ],
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.add,
                ),
                const SizedBox(
                  width: 16.0,
                ),
                const Text("Add Column"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

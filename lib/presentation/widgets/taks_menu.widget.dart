import 'package:flutter/material.dart';

class TaskMenu extends StatelessWidget {
  final Function deleteHandler;
  const TaskMenu({
    Key key,
    @required this.deleteHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
                deleteHandler();
              },
              child: Container(
                height: 40,
                child: Text(
                  'Delete Task',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

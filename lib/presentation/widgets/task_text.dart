import 'package:flutter/material.dart';

class TaskText extends StatelessWidget {
  const TaskText({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
        color: Colors.white,
      ),
    );
  }
}

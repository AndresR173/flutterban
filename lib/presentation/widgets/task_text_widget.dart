import 'package:flutter/material.dart';

class TaskText extends StatelessWidget {
  const TaskText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}

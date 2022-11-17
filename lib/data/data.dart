// ignore_for_file: prefer_const_constructors

import '../models/models.dart';

class Data {
  static List<KColumn> getColumns() {
    return List.from([
      KColumn(
        title: 'To Do',
        children: [
          KTask(title: 'ToDo 1'),
          KTask(title: 'ToDo 2'),
        ],
      ),
      KColumn(
        title: 'In Progress',
        children: [
          KTask(title: 'ToDo 3'),
        ],
      ),
      KColumn(
        title: 'Done',
        children: [
          KTask(title: 'ToDo 4'),
          KTask(title: 'ToDo 5'),
        ],
      )
    ]);
  }
}

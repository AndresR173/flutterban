import '../models/models.dart';

List<KColumn> columns = List.from([
  const KColumn(
    title: 'To Do',
    children: [
      KTask(title: 'ToDo 1'),
      KTask(title: 'ToDo 2'),
    ],
  ),
  const KColumn(
    title: 'In Progress',
    children: [
      KTask(title: 'ToDo 3'),
    ],
  ),
  const KColumn(
    title: 'Done',
    children: [
      KTask(title: 'ToDo 4'),
      KTask(title: 'ToDo 5'),
    ],
  )
]);

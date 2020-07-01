import 'package:Flutterban/application/bloc/kanban_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => KanbanBloc());
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_bloc/models/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, List<Todo>> {
  TodoBloc() : super([]) {
    on<TodoAddEvent>((event, emit) {});
  }
}

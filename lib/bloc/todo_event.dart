part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent {}

class TodoAddEvent extends TodoEvent {}

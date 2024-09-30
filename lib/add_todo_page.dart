import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/cubit/todo_cubit.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final todoTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo List"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: todoTitleController,
              decoration: InputDecoration(hintText: 'Title'),
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<TodoCubit>().addTodo(
                      todoTitleController.text.trim(),
                    );
                Navigator.of(context).pop();
                // BlocProvider.of<TodoCubit>(context).addTodo(
                //   todoTitleController.text.trim(),
                // );
              },
              child: Text('add'),
            )
          ],
        ),
      ),
    );
  }
}

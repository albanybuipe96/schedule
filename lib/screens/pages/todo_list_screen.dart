import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule/bloc/store.dart';
import 'package:schedule/custom/todo_app_bar.dart';
import 'package:schedule/screens/add_todo_screen.dart';
import 'package:schedule/screens/todo_list.dart';

class TodoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          children: [
            TodoAppBar(
              count: Provider.of<Store>(context).todoListCount,
            ),
            TodoList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black54,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) => AddTodoScreen(),
          );
        },
      ),
    );
  }
}

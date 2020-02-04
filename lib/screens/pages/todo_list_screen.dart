import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule/bloc/store.dart';
import 'package:schedule/custom/checkable_tile.dart';
import 'package:schedule/screens/add_todo_screen.dart';

class TodoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(
      builder: (context, store, child) {
        return Scaffold(
          backgroundColor: Colors.white70,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(90.0),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 45.0,
                          color: Colors.white70,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      SizedBox(width: 50.0),
                      Text(
                        'Daily Tasks | ${store.todoListCount}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                ),
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
//                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(145.0),
                        topRight: Radius.circular(45.0),
                        bottomRight: Radius.circular(45.0),
                      ),
                    ),
                    child: ListView.builder(
                      itemCount: store.todoListCount,
                      itemBuilder: (ctx, idx) {
                        final item = store.todoList[idx];
                        return CheckableTile(
                          name: item.name,
                          isCompleted: item.isCompleted,
                          checkboxCallback: (value) => store.update(item),
                          deleteCallback: () => store.delete(item),
                        );
                      },
                    ),
                  ),
                ),
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
      },
    );
  }
}
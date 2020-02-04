import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule/bloc/store.dart';
import 'package:schedule/custom/checkable_tile.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(145.0),
            topRight: Radius.circular(45.0),
            bottomRight: Radius.circular(45.0),
          ),
        ),
        child: Consumer<Store>(builder: (context, store, child) {
          return ListView.builder(
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
          );
        }),
      ),
    );
  }
}

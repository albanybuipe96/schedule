import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule/bloc/store.dart';

class AddTodoScreen extends StatelessWidget {
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Color(0xff757575),
      color: Color.fromRGBO(117, 117, 117, 1.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(145.0),
            topLeft: Radius.circular(45.0),
//                        bottomLeft: Radius.circular(145.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 10.0, right: 15.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: nameController,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: 'E.g. Call Mom'),
                ),
                FlatButton(
                  child: Text('Add'),
                  textColor: Colors.white70,
                  color: Colors.deepPurpleAccent,
                  onPressed: () {
                    Provider.of<Store>(context).addTodo(nameController.text);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

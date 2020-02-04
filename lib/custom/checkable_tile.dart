import 'package:flutter/material.dart';

class CheckableTile extends StatelessWidget {
  final String name;
  final bool isCompleted;
  final Function checkboxCallback;
  final Function deleteCallback;

  CheckableTile({
    this.name,
    this.isCompleted,
    this.checkboxCallback,
    this.deleteCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(256.0),
          topRight: Radius.circular(90.0),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.topRight,
          colors: [Colors.blue[100], Colors.black87]
        ),
      ),
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(
            decoration: isCompleted ? TextDecoration.lineThrough : null,
            color: Colors.black87,
            fontSize: 18.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Times New Roman',
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.grey,
          value: isCompleted,
          onChanged: checkboxCallback,
        ),
        onLongPress: deleteCallback,
      ),
    );
  }
}

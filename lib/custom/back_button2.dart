import 'package:flutter/material.dart';

class BackButton2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Icon(
        Icons.arrow_back_ios,
        size: 45.0,
        color: Colors.white70,
      ),
      onPressed: () => Navigator.pop(context),
    );
  }
}
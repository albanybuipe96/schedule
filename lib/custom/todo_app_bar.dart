import 'package:flutter/material.dart';
import 'package:schedule/custom/back_button2.dart';

class TodoAppBar extends StatelessWidget {

  final int count;

  TodoAppBar({this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          BackButton2(),
          SizedBox(width: 50.0),
          Text(
            'Daily Tasks | $count',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 20.0),
    );
  }
}
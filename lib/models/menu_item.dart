import 'package:flutter/material.dart';

class MenuItem {
  final String name;
  int count;
  final IconData icon;
  final Function selectedCallback;

  MenuItem({this.name, this.count = 0, this.icon, this.selectedCallback});
}

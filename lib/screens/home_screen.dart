import 'package:flutter/material.dart';
import 'package:schedule/custom/list_summary.dart';
import 'package:schedule/screens/home_menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          children: [
            ListSummary(),
            HomeMenu(),
          ],
        ),
      ),
    );
  }
}

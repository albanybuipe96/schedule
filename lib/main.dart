import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule/bloc/store.dart';
import 'package:schedule/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Store>(
      create: (context) => Store(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

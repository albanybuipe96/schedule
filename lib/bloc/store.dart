import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:schedule/models/menu_item.dart';
import 'package:schedule/models/model.dart';
import 'package:schedule/models/shopping.dart';
import 'package:schedule/models/todo.dart';
import 'package:schedule/screens/pages/shopping_list_screen.dart';
import 'package:schedule/screens/pages/todo_list_screen.dart';

class Store extends ChangeNotifier {
  List<MenuItem> _menuItemList = [
    MenuItem(
        name: 'ToDo',
        icon: Icons.list,
        count: 3,
        selectedCallback: (context) => Navigator.push(
            context, MaterialPageRoute(builder: (_) => TodoListScreen()))),
    MenuItem(
        name: 'Shopping',
        icon: Icons.shopping_cart,
        count: 4,
        selectedCallback: (context) => Navigator.push(
            context, MaterialPageRoute(builder: (_) => ShoppingListScreen()))),
    MenuItem(name: 'Work', icon: Icons.work, count: 6, selectedCallback: (_) {}),
    MenuItem(name: 'Reading', icon: Icons.library_books, count: 2, selectedCallback: (_) {}),
  ];
  List<Todo> _todoList = [
    Todo(name: 'Finish CE 351 assignment'),
    Todo(name: 'Finish CE 351 assignment'),
    Todo(name: 'Finish CE 351 assignment'),
  ];
  List<Shopping> _shoppingList = [
    Shopping(name: 'Egg', price: 0.6, count: 24),
    Shopping(name: 'Egg', price: 0.6, count: 24),
    Shopping(name: 'Egg', price: 0.6, count: 24),
    Shopping(name: 'Egg', price: 0.6, count: 24),
  ];

  UnmodifiableListView<MenuItem> get menuItemList =>
      UnmodifiableListView(_menuItemList);

  int get menuItemCount => _menuItemList.length;

  UnmodifiableListView<Todo> get todoList => UnmodifiableListView(_todoList);

  int get todoListCount => _todoList.length;

  UnmodifiableListView<Shopping> get shoppingList =>
      UnmodifiableListView(_shoppingList);

  int get shoppingListCount => _shoppingList.length;

  int get allCount => shoppingListCount + todoListCount;

  void addTodo(String value) {
    _todoList.add(Todo(name: value));
    notifyListeners();
  }

  void addShoppingItem(String value, double price, int count) {
    _shoppingList.add(Shopping(name: value, price: price, count: count));
    notifyListeners();
  }

  void delete(Model item) {
    switch (item.runtimeType) {
      case Todo:
        _todoList.remove(item);
        break;
      case Shopping:
        _shoppingList.remove(item);
        break;
    }
    notifyListeners();
  }

  void update(Model item) {
    item.toggle();
    notifyListeners();
  }
}

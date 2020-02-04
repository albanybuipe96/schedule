import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  CustomTile({this.itemTitle, this.icon, this.menuCount, this.menuSelectedCallback});

  final String itemTitle;
  final IconData icon;
  final int menuCount;
  final Function menuSelectedCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(icon, color: Colors.brown,),
        backgroundColor: Colors.white30,
      ),
      title: Text(itemTitle, style: TextStyle(),),
      trailing: Text('$menuCount', style: TextStyle(color: Colors.black54),),
      onTap: menuSelectedCallback,
    );
  }
}

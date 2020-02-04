import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule/bloc/store.dart';
import 'package:schedule/custom/menu_tile.dart';

class ListSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: CustomTile(
        itemTitle: 'All',
        icon: Icons.view_list,
        menuCount: Provider.of<Store>(context).allCount,
      ),
    );
  }
}
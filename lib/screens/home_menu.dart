import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule/bloc/store.dart';
import 'package:schedule/custom/menu_tile.dart';

class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Consumer<Store>(
        builder: (context, store, child) {
          return Column(
            children: [
              Container(
                height: 355.0,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: ListView.builder(
                  itemCount: store.menuItemCount,
                  itemBuilder: (ctx, idx) {
                    final item = store.menuItemList[idx];
                    return Column(
                      children: [
                        CustomTile(
                          itemTitle: item.name,
                          icon: item.icon,
                          menuCount: item.count,
                          menuSelectedCallback: () {
                            item.selectedCallback(context);
                          },
                        ),
                        Divider(color: Colors.white),
                      ],
                    );
                  },
                ),
              ),
              Container(
                child: FlatButton(
                  child: Text(
                    'New List',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  textColor: Colors.lightBlueAccent,
                  onPressed: () {},
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'nav-drawer.dart';

void main() {
  runApp(MaterialApp(
    title: "BelajarFlutter",
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Drawer Saya"),
            bottom: TabBar(tabs: [
              new Tab(icon: new Icon(Icons.folder), text: "My Files"),
              new Tab(icon: new Icon(Icons.group), text: "Shared with me"),
              new Tab(icon: new Icon(Icons.access_time), text: "Recent"),
              new Tab(icon: new Icon(Icons.delete), text: "Trash"),
            ])),
        drawer: DrawerWidget(),
        endDrawer: DrawerWidget(),
        body: TabBarView(children: <Widget>[
          Galeri(),
        ]));
  }
}

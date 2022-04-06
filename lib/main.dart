import 'package:flutter/material.dart';
import 'nav-drawer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Belajar Flutter",
    home: NavigationDrawer(),
  ));
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Dahsboard'),
            bottom: TabBar(
              tabs: [
                new Tab(icon: new Icon(Icons.folder), text: "My Files"),
                new Tab(icon: new Icon(Icons.group), text: "Shared with me"),
                new Tab(icon: new Icon(Icons.access_time), text: "Recent"),
                new Tab(icon: new Icon(Icons.delete), text: "Trash"),
              ],
            ),
          ),
          drawer: DrawerWidget(),
          body: TabBarView(
            children: <Widget>[
              Galeri(),
              Share(),
              Galeri(),
              Trash(),
            ],
          ),
        ));
  }
}

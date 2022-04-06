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
      ),
      drawer: DrawerWidget(),
      endDrawer: DrawerWidget(),
      body: Center(child: Text('Belajar Navigation Drawer', style: TextStyle(fontSize: 20))),
    );
  }
}

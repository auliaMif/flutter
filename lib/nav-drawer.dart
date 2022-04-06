import 'package:flutter/material.dart';
import 'Galerry.dart' as galeri;

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(icon: Icons.folder, text: 'My Files', onTap: () => DefaultTabController.of(context)?.animateTo(1)),
          _drawerItem(icon: Icons.group, text: 'Shared with me', onTap: () => DefaultTabController.of(context)?.animateTo(2)),
          _drawerItem(icon: Icons.access_time, text: 'Recent', onTap: () => DefaultTabController.of(context)?.animateTo(3)),
          _drawerItem(icon: Icons.delete, text: 'Trash', onTap: () => DefaultTabController.of(context)?.animateTo(4)),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(icon: Icons.bookmark, text: 'Family', onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/aulia.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(image: AssetImage('assets/aulia.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(image: AssetImage('assets/aulia.jpg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('Aulia Mifta'),
    accountEmail: Text('auliamif009@gmail.com'),
  );
}

Widget _drawerItem({IconData? icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

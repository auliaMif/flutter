import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cobaListView(),
    );
  }
}

class cobaListView extends StatelessWidget {
  final List<String> gambar = [
    "assets/adele.jpg",
    "assets/ariana.jpg",
    "assets/bazzi.jpg",
    "assets/charlie puth.png",
    "assets/meghan trainor.jpg",
    "assets/sam smith.jpg",
  ];

  final List<String> sub = [
    'Adele',
    'Ariana Grande',
    'Bazzi',
    'Charlie Puth',
    'Meghan Trainor',
    'Sam Smith',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("My Galery", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
        ),
        backgroundColor: Colors.red[200],
      ),
      body: ListView.builder(
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                gambar[index],
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}

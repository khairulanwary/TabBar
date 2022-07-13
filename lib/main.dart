import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create TabBar In Flutter',
      home: ShowTabBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ShowTabBar extends StatelessWidget {
  const ShowTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: const Text('Create Tabbar In Flutter',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
          bottom: const TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.account_circle),
              text: 'Profile',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Favourite',
            )
          ]),
        ),
        body: const TabBarView(children: <Widget>[
          Center(
            child: Icon(
              Icons.home,
              size: 150.0,
            ),
          ),
          Center(
            child: Icon(
              Icons.account_circle,
              size: 150.0,
            ),
          ),
          Center(
            child: Icon(
              Icons.favorite,
              size: 150.0,
            ),
          ),
        ]),
      ),
    );
  }
}

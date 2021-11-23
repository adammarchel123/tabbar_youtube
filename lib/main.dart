import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final List<Tab> tab = [
    Tab(
      text: 'CHATS',
    ),
    Tab(
      text: 'STATUS',
    ),
    Tab(
      text: 'CALLS',
    ),
    Tab(
      text: 'CAMERA',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1,
        length: tab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabbar Youtube'),
            bottom: TabBar(tabs: tab),
          ),
          body: TabBarView(children: [
            Center(
              child: Text('Page 1'),
            ),
            Center(
              child: Text('Page 2'),
            ),
            Center(
              child: Text('Page 3'),
            ),
            Center(
              child: Text('Page 4'),
            )
          ]),
        ),
      ),
    );
  }
}

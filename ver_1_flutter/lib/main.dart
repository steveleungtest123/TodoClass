import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo',
      home: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: _MyHomePage(),
      ),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('todo'),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.format_list_bulleted)),
            Tab(icon: Icon(Icons.format_align_justify)),
            Tab(icon: Icon(Icons.format_align_center))
          ],
        ),
      ),
      body: TabBarView(
        children: [
          ListView(
            children: [ListTile(
              title: Text('new title'),
            )],
          ),
          ListView(
            children: [ListTile(
              title: Text('new title'),
            )],
          ),
          ListView(
            children: [ListTile(
              title: Text('new title'),
            )],
          )
        ],
      )
    );
  }
}

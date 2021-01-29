import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String routeName = 'home';
  static String routePath = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TabController _controller;
  int _tabIndex;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                padding: EdgeInsets.all(0.0),
                icon: Icon(Icons.keyboard_arrow_left),
                onPressed: () {},
              ),
              Text("今天"),
              IconButton(
                icon: Icon(Icons.keyboard_arrow_right),
                onPressed: () {},
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {
                  return null;
                })
          ],
          // bottom: TabBar(
          //   tabs: [
          //     Tab(icon: Icon(Icons.format_list_bulleted)),
          //     Tab(icon: Icon(Icons.check))
          //   ],
          // ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                ListTile(
                  title: Text('hello'),
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text('byeby'),
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.format_list_bulleted), label: 'list'),
            BottomNavigationBarItem(icon: Icon(Icons.check), label: 'done')
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ver_1_flutter/screens/settingPage.dart';

class HomePage extends StatefulWidget {
  static String routeName = 'home';
  static String routePath = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _tabIndex;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
    _tabIndex = 0;
  }

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
                onPressed: () {
                  
                },
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
                  Navigator.pushNamed(context, SettingPage.routeName);
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
        // bottomNavigationBar: BottomNavigationBar(
        //   items: <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.format_list_bulleted), label: 'list'),
        //     BottomNavigationBarItem(icon: Icon(Icons.check), label: 'done')
        //   ],
        // ),
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 65.0,
          child: TabBar(
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Theme.of(context).textTheme.bodyText2.color,
            indicatorColor: Theme.of(context).primaryColor,
            tabs: [
              Tab(
                icon: Icon(Icons.format_list_bulleted),
                text: 'list',
              ),
              Tab(icon: Icon(Icons.check), text: 'done')
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ver_1_flutter/screens/HomePage.dart';
import 'package:ver_1_flutter/screens/settingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routes = <String, WidgetBuilder>{
      HomePage.routeName: (BuildContext context) => HomePage(),
      SettingPage.routeName: (BuildContext context) => SettingPage()
    };
    return MaterialApp(
      title: 'Routes',
      home: HomePage(),
      routes: routes,
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Todo',
//       home: DefaultTabController(
//         initialIndex: 0,
//         length: 3,
//         child: _MyAppWrapper(),
//       ),
//     );
//   }
// }

// class _MyAppWrapper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('todo'),
//         bottom: TabBar(
//           tabs: [
//             Tab(icon: Icon(Icons.format_list_bulleted)),
//             Tab(icon: Icon(Icons.format_align_justify)),
//             Tab(icon: Icon(Icons.format_align_center))
//           ],
//         ),
//       ),
//       body: TabBarView(
//         children: [
//           ListView(
//             children: [ListTile(
//               title: Text('new title'),
//             )],
//           ),
//           ListView(
//             children: [ListTile(
//               title: Text('new title'),
//             )],
//           ),
//           ListView(
//             children: [ListTile(
//               title: Text('new title'),
//             )],
//           )
//         ],
//       )
//     );
//   }
// }

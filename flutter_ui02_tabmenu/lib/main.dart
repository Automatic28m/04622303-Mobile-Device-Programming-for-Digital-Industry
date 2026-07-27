import 'package:flutter/material.dart';
import 'package:flutter_ui02_tabmenu/home.dart';

void main() {
  runApp(const MyApp());
}

// 1----------------------------------------------------------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // 2---------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'หน้าแรก'),
                Tab(icon: Icon(Icons.info), text: 'เกี่ยวกับภาควิชา'),
                Tab(icon: Icon(Icons.people), text: 'บุคลากร')
              ],
            ),
          ),
          // 3---------------------------------------------------------------------
          body: TabBarView(children: [
            Home(),
            Icon(Icons.school),
            Icon(Icons.man),
          ])
          // 3---------------------------------------------------------------------
        ),
      ),
    );
  }

  // 2---------------------------------------------------------------------
}
// 1----------------------------------------------------------------------
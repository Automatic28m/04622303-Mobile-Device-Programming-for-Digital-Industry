import 'package:flutter/material.dart';
import 'package:flutter_ui02_student_bio/home.dart';

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
                Tab(icon: Icon(Icons.person), text: 'ข้อมูลส่วนบุคคล'),
                Tab(icon: Icon(Icons.school), text: 'การศึกษา'),
                Tab(icon: Icon(Icons.corporate_fare_outlined), text: 'การฝึกงาน'),
                Tab(icon: Icon(Icons.auto_graph_rounded), text: 'ประสบการณ์'),
                Tab(icon: Icon(Icons.stars), text: 'รางวัล')
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
import 'package:flutter/material.dart';
import 'package:flutter_ui02_homework/archievement.dart';
import 'package:flutter_ui02_homework/education.dart';
import 'package:flutter_ui02_homework/home.dart';
import 'package:flutter_ui02_homework/internship.dart';
import 'package:flutter_ui02_homework/project.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('ประวัติของ พัลลภ บุญเหลือ'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'หน้าแรก'),
                Tab(icon: Icon(Icons.auto_graph_rounded), text: 'โปรเจก'),
                Tab(icon: Icon(Icons.stars), text: 'ความสำเร็จ'),
                Tab(icon: Icon(Icons.school), text: 'การศึกษา'),
                Tab(
                  icon: Icon(Icons.corporate_fare_outlined),
                  text: 'การฝึกงาน',
                ),
                
                
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Home(),
              Project(),
              Archievement(),
              Education(),
              Internship()
            ],
          ),
        ),
      ),
    );
  }
}

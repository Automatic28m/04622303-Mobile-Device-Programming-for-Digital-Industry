import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // 4----–----–----–----–----–----–----–----–----–----–----–----–
      child: Column(
        children: [
          Image.asset('assets/images/portrait.jpeg'),
          const Text(
            'นายพัลลภ บุญเหลือ\nภาควิชาวิศวกรรมคอมพิวเตอร์\nคณะวิศวกรรมศาสตร์ มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี',
            style: TextStyle(fontSize: 20, fontFamily: 'tahoma'),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      // 4----–----–----–----–----–----–----–----–----–----–----–----–
    );
  }
}

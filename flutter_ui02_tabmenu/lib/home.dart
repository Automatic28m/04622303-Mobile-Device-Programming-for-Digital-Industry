import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // 4----–----–----–----–----–----–----–----–----–----–----–----–
      child: Column(
        children: [
          const Text(
            'ภาควิชาวิศวกรรมคอมพิวเตอร์\nคณะวิศวกรรมศาสตร์ มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี',
            style: TextStyle(fontSize: 20, fontFamily: 'tahoma'),
            textAlign: TextAlign.center,
          ),
          Image.asset('assets/images/cpe01.jpg'),

          const Text('\n\n'),
          Image.asset('assets/images/cpe02.png')
        ],
      ),
      // 4----–----–----–----–----–----–----–----–----–----–----–----–
    );
  }
}

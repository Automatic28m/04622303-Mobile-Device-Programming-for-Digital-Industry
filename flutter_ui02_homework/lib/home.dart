import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
	return SingleChildScrollView(
		child: Column(children: [
			const  Text('นายพัลลภ บุญเหลือ\nภาควิชาวิศวกรรมคอมพิวเตอร์\nคณะวิศวกรรมศาสตร์\nมหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี',
			style: TextStyle(fontSize: 20, fontFamily: 'tahoma'), textAlign: TextAlign.center,
			),
			Image.asset('assets/images/portrait.jpeg')
		],)
	);
  }
}

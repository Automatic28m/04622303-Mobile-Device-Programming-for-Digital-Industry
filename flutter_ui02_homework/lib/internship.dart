import 'package:flutter/material.dart';

class Internship extends StatelessWidget {
  const Internship({super.key});

  @override
  Widget build(BuildContext context) {
	return SingleChildScrollView(
		child: Column(children: [
			const  Text('การฝึกงาน',
			style: TextStyle(fontSize: 20, fontFamily: 'tahoma'), textAlign: TextAlign.center,
			),
		],)
	);
  }
}

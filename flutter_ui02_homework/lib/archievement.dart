import 'package:flutter/material.dart';

class Archievement extends StatelessWidget {
  const Archievement({super.key});

  @override
  Widget build(BuildContext context) {
	return SingleChildScrollView(
		child: Column(children: [
			const  Text('ความสำเร็จ',
			style: TextStyle(fontSize: 20, fontFamily: 'tahoma'), textAlign: TextAlign.center,
			),
		],)
	);
  }
}

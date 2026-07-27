import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
	return SingleChildScrollView(
		child: Column(children: [
			const  Text('การศึกษา',
			style: TextStyle(fontSize: 20, fontFamily: 'tahoma'), textAlign: TextAlign.center,
			),
		],)
	);
  }
}

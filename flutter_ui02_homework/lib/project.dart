import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
	return SingleChildScrollView(
		child: Column(children: [
			const  Text('โปรเจก',
			style: TextStyle(fontSize: 20, fontFamily: 'tahoma'), textAlign: TextAlign.center,
			),
		],)
	);
  }
}

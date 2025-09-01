import 'package:flutter/material.dart';

class Disney extends StatelessWidget {
  const Disney({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Text('Disney'))),
    );
  }
}

import 'package:flutter/material.dart';

class onboard1 extends StatelessWidget {
  const onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF9F3DD),
        body: Center(
          child: Container(
            alignment: Alignment(0, -1),
            child: Image.asset("assets/logo/onboard1.png"),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Git Commands'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text("Hello"),
        ),
      ),
    );
  }
}

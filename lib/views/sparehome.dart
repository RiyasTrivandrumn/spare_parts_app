import 'package:flutter/material.dart';

class SpareHome extends StatelessWidget {
  const SpareHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Spare App bar",style: TextStyle(color: Colors.white),),),

      body: Center(
        child: Text("Hi user",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
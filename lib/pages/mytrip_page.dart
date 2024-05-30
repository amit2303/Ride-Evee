import 'package:flutter/material.dart';
import 'package:ride/exports.dart';

class MytripPage extends StatelessWidget {
  const MytripPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(child: Center(child: Text("My Trip"),),),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ride/bottom_navigation.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Center(child: Text("More"),),),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
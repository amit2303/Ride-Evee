import 'package:flutter/material.dart';
import 'package:ride/bottom_navigation.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(child: Center(child: Text("Account"),),),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
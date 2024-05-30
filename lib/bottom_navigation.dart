import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ride/exports.dart';
import 'package:ride/routes.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Color(0xff38B000), // Set primary color to green
      ),
      child: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final selectedIndex = ref.watch(selectedIndexProvider);
          return BottomNavigationBar(
            items: [
              _buildNavigationBarItem(
                  'assets/vectors/home.svg', 'Home', 0, selectedIndex),
              _buildNavigationBarItem(
                  'assets/vectors/mytrip.svg', 'My Trip', 1, selectedIndex),
              _buildNavigationBarItem(
                  'assets/vectors/account.svg', 'Account', 2, selectedIndex),
              _buildNavigationBarItem(
                  'assets/vectors/more.svg', 'More', 3, selectedIndex),
            ],
            currentIndex: selectedIndex,
            showUnselectedLabels: true,
            selectedItemColor: Colors.black, 
            unselectedItemColor: Colors.white, 
            unselectedLabelStyle: TextStyle(color: Colors.white),
            
            onTap: (int index) {
              ref.read(selectedIndexProvider.notifier).state = index;

              switch (index) {
                case 0:
                  Navigator.pushNamed(context, Routes.homeRoute);
                  break;
                case 1:
                  Navigator.pushNamed(context, Routes.mytripRoute);
                  break;
                case 2:
                  Navigator.pushNamed(context, Routes.accountRoute);
                  break;
                case 3:
                  Navigator.pushNamed(context, Routes.moreRoute);
                  break;
                // Add cases for additional routes if needed
              }
            },
          );
        },
      ),
    );
  }
}

BottomNavigationBarItem _buildNavigationBarItem(
    String imagePath, String label, int itemIndex, int selectedIndex) {
  return BottomNavigationBarItem(
    icon: SizedBox(
      width: 25,
      height: 25,
      child: SvgPicture.asset(
        imagePath,
        color: selectedIndex == itemIndex ? Colors.black : Colors.white,
      ),
    ),
    label: label,
  );
}






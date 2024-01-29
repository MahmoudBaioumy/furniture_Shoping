import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Model/Test_Style.dart';
import 'package:flutter_application_1/core/Model/appcolors.dart';
import 'package:flutter_application_1/features/Home/fav.dart';
import 'package:flutter_application_1/features/Home/home_page.dart';
import 'package:flutter_application_1/features/Home/notivgation.dart';
import 'package:flutter_application_1/features/Home/profile.dart';

class buttom_nav extends StatefulWidget {
  const buttom_nav({super.key});

  @override
  State<buttom_nav> createState() => _favoriteState();
}

int currentIndex = 0;
List<Widget> Screens = [Home_page(), fav(), notivigation(), profile()];

class _favoriteState extends State<buttom_nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: appColors.balckcolor,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/home.png',
                color: Colors.black,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/save.png',
                color: Colors.grey,
              ),
              label: 'save'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/Vector.png',
                color: Colors.grey,
              ),
              label: 'notivigation'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/Group.png',
                color: Colors.grey,
              ),
              label: 'profile'),
        ],
      ),
    );
  }
}

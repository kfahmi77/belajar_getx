import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          buildDrawerHeader(),
          buildDrawerItem(
            icon: Icons.photo,
            text: "SQFLITE",
            onTap: () => navigate(0),
            tileColor: Get.currentRoute == Routes.SQFLITE ? Colors.blue : null,
            textIconColor: Get.currentRoute == Routes.SQFLITE
                ? Colors.white
                : Colors.black,
          ),
          buildDrawerItem(
            icon: Icons.video_call,
            text: "HIVE",
            /**/
            onTap: () => navigate(1),
            tileColor: Get.currentRoute == Routes.HIVE ? Colors.blue : null,
            textIconColor: /**/
                Get.currentRoute == Routes.HIVE ? Colors.white : Colors.black,
          ),
          buildDrawerItem(
              icon: Icons.chat,
              text: "MOOR",
              onTap: () => navigate(2),
              tileColor: Get.currentRoute == Routes.MOOR ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.MOOR
                  ? Colors.white
                  : Colors.black),
        ],
      ),
    );
  }

  Widget buildDrawerHeader() {
    return const UserAccountsDrawerHeader(
      accountName: Text("Khoirul Fahmi"),
      accountEmail: Text("khoirulfahmi44@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('assets/logo.png'),
      ),
      currentAccountPictureSize: Size.square(72),
      otherAccountsPictures: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Text("KF"),
        )
      ],
      otherAccountsPicturesSize: Size.square(50),
    );
  }

  Widget buildDrawerItem({
    required String text,
    required IconData icon,
    required Color textIconColor,
    required Color? tileColor,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: textIconColor),
      title: Text(
        text,
        style: TextStyle(color: textIconColor),
      ),
      tileColor: tileColor,
      onTap: onTap,
    );
  }

  navigate(int index) {
    if (index == 0) {
      Get.toNamed(Routes.SQFLITE);
    } else if (index == 1) {
      Get.toNamed(Routes.HIVE);
    }
    if (index == 2) {
      Get.toNamed(Routes.MOOR);
    }
  }
}

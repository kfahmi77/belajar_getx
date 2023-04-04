import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../common/navigation_drawer.dart';
import '../controllers/hive_controller.dart';

class HiveView extends GetView<HiveController> {
  const HiveView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HiveView'),
        centerTitle: true,
      ),
      drawer: const NavigationDrawerWidget(),
      body: const Center(
        child: Text(
          'HiveView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

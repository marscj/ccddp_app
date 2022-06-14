import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView1'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is working2',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

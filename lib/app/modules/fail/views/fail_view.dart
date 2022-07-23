import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/fail_controller.dart';

class FailView extends GetView<FailController> {
  const FailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'There was an error posting your ticket!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            Center(
                child: Container(
              child: Icon(
                Icons.close,
                size: 200,
                color: Colors.white,
              ),
              width: 300,
              height: 300,
              decoration:
                  BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
            )),
          ],
        ),
      ),
    );
  }
}

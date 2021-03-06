import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/success_controller.dart';

class SuccessView extends GetView<SuccessController> {
  const SuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Your ticket has been posted succesfully!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            Center(
                child: Container(
              child: Icon(
                Icons.check,
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

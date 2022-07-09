import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_html/flutter_html.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splash.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Obx(
                      () => AnimatedOpacity(
                        opacity: controller.logoOpacity.value.toDouble(),
                        duration: const Duration(milliseconds: 1000),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(400),
                            child: Image.asset(
                              'assets/images/logo.jpeg',
                              height: 200,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => AnimatedOpacity(
                        opacity: controller.headingOpacity.value.toDouble(),
                        duration: const Duration(milliseconds: 1000),
                        child: Column(
                          children: [
                            Text(
                              'AlexBordei.dev',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Text(
                              'ticketing',
                              style: Theme.of(context).textTheme.subtitle1,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Obx(
                () => AnimatedOpacity(
                  opacity: controller.footerOpacity.value.toDouble(),
                  duration: const Duration(milliseconds: 1000),
                  child: Html(
                    style: {
                      'p': Style(
                        textAlign: TextAlign.center,
                        fontSize: FontSize.large,
                        color: Colors.white,
                      ),
                      'a': Style(
                        color: Colors.white,
                      )
                    },
                    data:
                        '<p>Photo by <a href="https://unsplash.com/@christopherstites?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Christopher Stites</a> on <a href="https://unsplash.com/s/photos/splash-screen?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a></p>',
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

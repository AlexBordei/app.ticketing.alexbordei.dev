import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.black,
          ),
        ),
        textTheme: const TextTheme(
            headline1: TextStyle(
              fontFamily: 'Consolas',
              fontSize: 42,
            ),
            subtitle1: TextStyle(
              color: Colors.black,
            ),
            subtitle2: TextStyle(
              fontFamily: 'Consolas',
              fontStyle: FontStyle.italic,
              fontSize: 36,
            )),
      ),
    ),
  );
}


import 'package:flutter/material.dart';
import 'package:tutorial_app/views/login_screen.dart';
import 'package:get/get.dart';

import 'controllers/routes/app_pages.dart';
void main() => runApp(
  GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppPages.initial,
    getPages: AppPages.routes,
    home: const LoginPage(),

  )
);

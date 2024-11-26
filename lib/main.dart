import 'package:flutter/material.dart';
import 'package:tcs_locator/ui/location_list.dart';
import 'package:tcs_locator/ui/splash_screen.dart';

void main() {
   runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => const SplashScreen(),
      '/location': (context) => const LocationListView()
    },
  ));
}
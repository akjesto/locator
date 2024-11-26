import 'package:flutter/material.dart';
import 'package:tcs_locator/ui/location_list.dart';
import 'package:tcs_locator/ui/splash_screen.dart';

void main() {
  //runApp(const MyApp());

   runApp(MaterialApp(
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => const SplashScreen(),
      '/location': (context) => const LocationListView()
    },
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'TCS Locator',
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen(),
//     );
//   }
// }
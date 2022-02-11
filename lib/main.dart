import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sampleapp/screens/home_main.dart';

import 'screens/product_details_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: ScreenUtilInit(
        designSize: const Size(1440, 2880),
        builder: () {
          return const MyApp();
        },
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const HomeMain(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        // '/second': (context) => ProductDetailsScreen(
        //       arguments: ModalRoute.of(context).settings.arguments,
        //     ),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const ProductDetailsScreen(),
      //HomeMain(),
    );
  }
}

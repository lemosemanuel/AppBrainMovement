import 'package:brain_movement/src/pages/basico_page.dart';
import 'package:brain_movement/src/pages/page_home.dart';
import 'package:brain_movement/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    //   statusBarColor: Colors.white,
    // ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brain Movement',
      initialRoute: 'homePage',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'homePage': (BuildContext context) => HomePage(),
      },
    );
  }
}

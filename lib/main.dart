import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentals/widgets/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rentals',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Wrapper(),
      );
    } else {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        title: 'Rentals',
        theme: CupertinoThemeData(
          primaryColor: Colors.blue,
        ),
        home: Wrapper(),
      );
    }
  }
}

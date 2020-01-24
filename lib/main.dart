import 'package:flutter/material.dart';

import 'package:desing/src/pages/botones.dart';
import 'package:desing/src/pages/basico_page.dart';
import 'package:desing/src/pages/scroll_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'diseños',
      initialRoute: "botones",
      routes: {
        "basico": (BuildContext context ) =>BasicoPage(),
        "scroll": (BuildContext context ) =>ScrollPage(),
        "botones": (BuildContext context ) =>BotonesPage()
      },

    );
  }
}
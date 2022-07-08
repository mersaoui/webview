import 'package:flutter/material.dart';
import 'package:webbutton_app/view/home.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(255, 16, 29, 46),
        systemNavigationBarColor: Color.fromARGB(255, 16, 29, 46)));
    return const MaterialApp(
      title: 'WebView',
      debugShowCheckedModeBanner: false,
      home: PageHome(),
    );
  }
}

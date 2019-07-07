import 'package:flutter/material.dart';
import 'doctorlist.dart';
import 'doctor_page.dart';
import 'splash_screen.dart';
import 'pages/home_page.dart';
import 'viewmodels/imed_viewmodel.dart';

void main() async {
  await imedViewModel.load();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "iMed",
      home: SplashScreen(),

      routes: <String, WidgetBuilder>{
        '/doctorlist' : (BuildContext context) => MyHomePage(),
        '/doctor_page' : (BuildContext context) =>  DoctorPage(),
        '/splashscreen' : (BuildContext context) => SplashScreen(),
        '/homepage' : (BuildContext context) => HomePage(),
      }
    );
  }
}

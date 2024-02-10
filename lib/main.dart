import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whitehouse/screen/EventScreen.dart';
import 'package:whitehouse/screen/HomeScreen.dart';
import 'package:whitehouse/screen/MoneyScreen.dart';
import 'package:whitehouse/screen/StatsScreen.dart';
import 'package:whitehouse/screen/pair_add.dart';
import 'package:whitehouse/screen/first_page.dart';
import 'package:whitehouse/screen/forget_password.dart';
import 'package:whitehouse/screen/homepage.dart';
import 'package:whitehouse/screen/loginscreen.dart';
import 'package:whitehouse/screen/signupscreen.dart';
import 'package:whitehouse/screen/splashscreen.dart';

Future main() async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhiteHouse',
      home: HomeScreen(),
    );
  }
}


import 'package:calcu_lien/Screens/Introduction/menu.dart';
import 'package:calcu_lien/Screens/Introduction/splash.dart';
import 'package:calcu_lien/utils/Preference/preference.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


var isNewUser = Preference.pref.getBool("isNewUser") ?? true;

bool? hide;
  

void main()  async{
  runApp(const MyApp());
   Preference.pref =await SharedPreferences.getInstance();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Lien Zone',
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: "Hind"),
      home: const Splash()
    );
  }
}

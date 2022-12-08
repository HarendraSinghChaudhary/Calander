import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:calcu_lien/Screens/Introduction/menu.dart';
import 'package:calcu_lien/main.dart';
import 'package:calcu_lien/utils/constants/images.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/Screens/Introduction/information.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3), () => replaceRoute(context, isNewUser ? const Information() : const Menu()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SvgPicture.asset(SplashImage),
      ),
    );
  }
}

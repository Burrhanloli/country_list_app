import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:country_list_app/presentation/util/router.gr.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadWidget();
  }

  Future<void> _loadWidget() async {
    Future.delayed(
      const Duration(seconds: 1),
      () => ExtendedNavigator.of(context).popAndPush(Routes.homePage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/countries-splash.png",
              width: MediaQuery.of(context).size.width * 0.7,
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

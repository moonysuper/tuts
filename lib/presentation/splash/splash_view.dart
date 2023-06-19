import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tuts/presentation/resources/assets_manager.dart';
import 'package:tuts/presentation/resources/color_manager.dart';
import 'package:tuts/presentation/resources/constance_manager.dart';

import '../resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay(){
    _timer = Timer(const Duration(seconds: AppConstance.splashDelay), _goNext);
  }
  _goNext(){
    Navigator.popAndPushNamed(context, Routes.onBoardingRoute);
  }
  @override
  void initState() {
    _startDelay();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(child: Image(image: AssetImage(ImageAssets.imageLogo))),
    );
  }

  @override
  void dispose() {
      _timer?.cancel();
      super.dispose();
  }
}

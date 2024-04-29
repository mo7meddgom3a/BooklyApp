import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsData.logo),
          // const SizedBox(height: 20),
          // const CircularProgressIndicator(),
          // const SizedBox(height: 20),
          // const Text('   Loading...', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

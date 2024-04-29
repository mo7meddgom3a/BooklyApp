import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlideTransition(
            position: _slidingAnimation, child: Image.asset(AssetsData.logo)),
        const SizedBox(height: 6),

        //if i wanna to only rebuild the text widget i can use the AnimatedBuilder widget and delete the addlistener method
        // AnimatedBuilder(
        //   animation: _slidingAnimation,
        //   builder: (context, _) {
        SlideTransition(
          position: _slidingAnimation,
          child: const Text(
            "Read Free Books",
            style: TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _slidingAnimation = Tween<Offset>(
      begin: const Offset(-1, 8),
      end: Offset.zero,
    ).animate(_animationController);

    _animationController.forward();
    _slidingAnimation.addListener(() {
      setState(() {});
    });
  }
}

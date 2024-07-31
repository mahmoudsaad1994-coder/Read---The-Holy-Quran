import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 132, 192, 205),
              Color.fromARGB(255, 30, 110, 107)
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            FadeTransition(
              opacity: animationController.drive(
                CurveTween(curve: Curves.easeIn),
              ),
              child: Image.asset(
                'assets/images/grad_logo.png',
                fit: BoxFit.fill,
                height: size.height * .3,
              ),
            ),
            FadeTransition(
              opacity: animationController.drive(
                CurveTween(curve: Curves.easeIn),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: size.height * .05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'صدقة جارية عن والدي نسألكم الدعاء',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                        fontSize: size.width * .04,
                      ),
                    ),
                    Text(
                      'سعدالدين حامد عبدالعال الملا',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                        fontSize: size.width * .04,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
      lowerBound: 0.0,
      upperBound: 1,
    );
    animation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(milliseconds: 4000),
      () {
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }
}

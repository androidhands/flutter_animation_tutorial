import 'package:flutter/cupertino.dart';

class CustomSlider extends PageRouteBuilder {
  final page;
  CustomSlider({this.page})
      : super(
            pageBuilder: (context, animation, animationTwo) => page,
            transitionsBuilder: (context, animation, animationTwo, child) {
              //offset animation
              /*  var begin = const Offset(1.0, 0.0);
              var end = const Offset(0.0, 0.0);
              final tween = Tween(begin: begin, end: end);
              var offsetAnimation = animation.drive(tween);

              return SlideTransition(position: offsetAnimation, child: child); */

              //curves animation
              /* 
              var begin = const Offset(1.0, 0.0);
              var end = const Offset(0.0, 0.0);
              final tween = Tween(begin: begin, end: end);
              var curveAnimation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInBack);

              return SlideTransition(
                  position: tween.animate(curveAnimation), child: child); */

              /* //scal animation

              var begin = 0.0;
              var end = 1.0;
              final tween = Tween(begin: begin, end: end);
              var curveAnimation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInBack);

              return ScaleTransition(
                  scale: tween.animate(curveAnimation), child: child); */

              //rotation animation

              var begin = 0.0;
              var end = 1.0;
              final tween = Tween(begin: begin, end: end);
              var curveAnimation =
                  CurvedAnimation(parent: animation, curve: Curves.linear);

              return RotationTransition(
                  turns: tween.animate(curveAnimation), child: child);
            });
}

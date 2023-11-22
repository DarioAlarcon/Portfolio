import 'package:flutter/material.dart';


class EntryAnimation extends StatefulWidget {
  final int delay;
  final Widget child;
  final bool isTriggered;
  const EntryAnimation(
      {super.key,
      required this.delay,
      required this.child,
      required this.isTriggered});

  @override
  State<EntryAnimation> createState() => _EntryAnimationState();
}

class _EntryAnimationState extends State<EntryAnimation> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 300)
    );
    animation= Tween(begin: 0.0, end:1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut)
    );
    super.initState();
  } 

  @override
  Widget build(BuildContext context) {
    if (widget.isTriggered) {
      Future.delayed(Duration(milliseconds: widget.delay), () {
        animationController.forward();
      });
    } else {
      animationController.reverse().then((value) {
        animationController.reset();
      });
    }
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Align(
          alignment: Alignment(-(2.0 - animation.value), 0.0),
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
      child: widget.child,
    );
  }
}
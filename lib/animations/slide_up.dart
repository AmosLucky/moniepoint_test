import 'package:flutter/material.dart';

class SlideUpAnimation extends StatefulWidget {
  Widget child;
  SlideUpAnimation({super.key, required this.child});

  @override
  State<SlideUpAnimation> createState() => _SlideUpAnimationState();
}

class _SlideUpAnimationState extends State<SlideUpAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? animation;
  Animation<double>? _fadeInFadeOut;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1).animate(animation!);

    animation!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FadeTransition(opacity: _fadeInFadeOut!, child: widget.child),
      ),
    );
  }
}

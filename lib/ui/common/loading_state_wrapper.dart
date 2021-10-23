import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

const int _animationDurationInMilliseconds = 2500;
const int _animationPauseDurationInMilliseconds = 1000;

class LoadingStateWrapper extends StatefulWidget {
  const LoadingStateWrapper({Key? key}) : super(key: key);

  @override
  _LoadingStateWrapperState createState() => _LoadingStateWrapperState();
}

class _LoadingStateWrapperState extends State<LoadingStateWrapper> with SingleTickerProviderStateMixin {
  _LoadingStateWrapperState() {
    this._logoController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: _animationDurationInMilliseconds),
    );
    _firstAnimation = Tween<double>(
      begin: 0,
      end: 2 * pi,
    ).animate(
      CurvedAnimation(
        parent: _logoController!,
        curve: const Interval(
          0.0,
          0.5,
          curve: Curves.easeIn,
        ),
      ),
    );
    _secondAnimation = Tween<double>(
      begin: 1.0,
      end: 2.0,
    ).animate(
      CurvedAnimation(
        parent: _logoController!,
        curve: const Interval(
          0.5,
          1.0,
          curve: Curves.easeIn,
        ),
      ),
    );
  }

  AnimationController? _logoController;
  late Animation<double> _firstAnimation;
  late Animation<double> _secondAnimation;

  Widget _buildLoadingAnimation(BuildContext context, Widget? child) {
    return ScaleTransition(
      scale: _secondAnimation,
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()..rotateZ(_firstAnimation.value),
        child: Container(
          child: child,
        ),
      ),
    );
  }

  void _startLoadingAnimation() {
    _logoController!.addStatusListener((status) async {
      switch (status) {
        case AnimationStatus.dismissed:
          await Future.delayed(
            const Duration(milliseconds: _animationPauseDurationInMilliseconds),
            () => _logoController!.forward(),
          );
          break;
        case AnimationStatus.forward:
        case AnimationStatus.reverse:
          break;
        case AnimationStatus.completed:
          await _logoController!.reverse();
          break;
      }
    });
    _logoController!.forward();
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      _startLoadingAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: AnimatedBuilder(
          builder: _buildLoadingAnimation,
          animation: _logoController!.view,
          child: Image.asset('assets/images/logo_flutter_1080px_clr.png'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _logoController?.dispose();
    super.dispose();
  }
}

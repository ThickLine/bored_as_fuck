import 'package:baf/widgets/animation/button_stagger_animation.dart';
import 'package:flutter/material.dart';

class ProgressButton extends StatefulWidget {
  /// The background color of the button.
  final Color? color;

  /// The progress indicator color.
  final Color? progressIndicatorColor;

  /// The size of the progress indicator.
  final double? progressIndicatorSize;

  final EdgeInsetsGeometry? padding;

  final RoundedRectangleBorder? shape;

  final Size? minimumSize;

  final bool? disable;

  /// The border radius while NOT animating.
  final BorderRadius? borderRadius;

  /// The duration of the animation.
  final Duration? animationDuration;

  /// The stroke width of progress indicator.
  final double? strokeWidth;

  /// Function that will be called at the on pressed event.
  ///
  /// This will grant access to its [AnimationController] so
  /// that the animation can be controlled based on the need.
  final Function(AnimationController)? onPressed;

  /// The child to display on the button.
  final Widget? child;

  const ProgressButton({
    Key? key,
    @required this.child,
    @required this.onPressed,
    this.color = Colors.blue,
    this.strokeWidth = 2,
    this.minimumSize,
    this.padding,
    this.shape,
    this.disable,
    this.progressIndicatorColor = Colors.white,
    this.progressIndicatorSize = 30,
    this.borderRadius = const BorderRadius.all(Radius.circular(0)),
    this.animationDuration = const Duration(milliseconds: 300),
  }) : super(key: key);

  @override
  _ProgressButtonState createState() => _ProgressButtonState();
}

class _ProgressButtonState extends State<ProgressButton>
    with TickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ButtonStaggerAnimation(
        controller: _controller,
        padding: widget.padding,
        shape: widget.shape,
        color: widget.color,
        disable: widget.disable,
        minimumSize: widget.minimumSize,
        strokeWidth: widget.strokeWidth,
        progressIndicatorColor: widget.progressIndicatorColor,
        progressIndicatorSize: widget.progressIndicatorSize,
        borderRadius: widget.borderRadius,
        onPressed: widget.onPressed,
        child: widget.child,
      ),
    );
  }
}

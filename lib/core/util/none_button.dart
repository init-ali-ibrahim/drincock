import 'package:flutter/material.dart';

class AnimatedIconButton extends StatefulWidget {
  final IconData initialIcon;
  final IconData animatedIcon;
  final Duration animationDuration;
  final Duration revertDuration;
  final Color initialIconColor;
  final Color animatedIconColor;

  const AnimatedIconButton({
    Key? key,
    required this.initialIcon,
    required this.animatedIcon,
    this.animationDuration = const Duration(milliseconds: 300),
    this.revertDuration = const Duration(seconds: 1),
    this.initialIconColor = Colors.black,
    this.animatedIconColor = Colors.red,
  }) : super(key: key);

  @override
  _AnimatedIconButtonState createState() => _AnimatedIconButtonState();
}

class _AnimatedIconButtonState extends State<AnimatedIconButton> with SingleTickerProviderStateMixin {
  late IconData currentIcon;
  late Color currentColor;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    currentIcon = widget.initialIcon;
    currentColor = widget.initialIconColor;
    _controller = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
  }

  void _animateIcon() async {

    _controller.forward();
    setState(() {
      currentIcon = widget.animatedIcon;
      currentColor = widget.animatedIconColor;
    });

    await Future.delayed(widget.revertDuration);
    _controller.reverse();
    setState(() {
      currentIcon = widget.initialIcon;
      currentColor = widget.initialIconColor;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Icon(
            currentIcon,
            color: currentColor,
          );
        },
      ),
      onPressed: _animateIcon,
    );
  }
}
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? elevation;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry padding;

  const AppTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.elevation,
    this.borderRadius,
    this.padding = const EdgeInsets.symmetric(horizontal: 5),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            backgroundColor ?? Theme.of(context).colorScheme.primary,
        foregroundColor: textColor ?? Colors.black,
        elevation: elevation ?? 10,
        padding: padding,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(25),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: textColor ?? Colors.black,
            ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islamic_app/core/components/widgets/text_custom.dart';

class TextButtonCustom extends StatelessWidget {
  TextButtonCustom(
      {super.key,
      required this.text,
      required this.onPressed,
      this.clipBehavior,
      this.onFocusChange,
      this.alignment,
      this.animationDuration,
      this.elevation,
      this.backgroundColor,
      this.iconColor,
      this.shape,
      this.backgroundBuilder,
      this.textStyle,
      this.side,
      this.padding,
      this.textColor,
      this.backgroundColorTextColor,
      this.textAlign,
      this.decoration,
      this.softWrap,
      this.fontSize,
      this.overflow,
      this.fontWeight});

  final String text;
  final void Function()? onPressed;
  Function(bool)? onFocusChange;
  Clip? clipBehavior;
  AlignmentGeometry? alignment;
  Duration? animationDuration;
  double? elevation;
  Color? backgroundColor;
  Color? iconColor;
  OutlinedBorder? shape;
  Widget Function(BuildContext, Set<WidgetState>, Widget?)? backgroundBuilder;
  TextStyle? textStyle;
  BorderSide? side;
  EdgeInsetsGeometry? padding;
  Color? textColor;
  Color? backgroundColorTextColor;
  TextAlign? textAlign;
  TextDecoration? decoration;
  bool? softWrap;
  FontWeight? fontWeight;
  double? fontSize;
  TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        alignment: alignment,
        animationDuration: animationDuration,
        elevation: elevation,
        backgroundColor: backgroundColor,
        iconColor: iconColor,
        shape: shape,
        backgroundBuilder: backgroundBuilder,
        textStyle: textStyle,
        side: side,
        padding: padding,
      ),
      onFocusChange: onFocusChange,
      clipBehavior: clipBehavior,
      onPressed: onPressed,
      child: TextCustom(
        text: text,
        color: textColor,
        backgroundColor: backgroundColorTextColor,
        textAlign: textAlign,
        decoration: decoration,
        softWrap: softWrap,
        fontWeight: fontWeight,
        fontSize: fontSize,
        overflow: overflow,
      ),
    );
  }
}

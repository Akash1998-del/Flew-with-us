import 'package:flutter/material.dart';
import 'package:flewwithus/utils/AppColor.dart';
import 'package:flewwithus/utils/AppColor.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? decorationColor;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final bool? isCenter;
  final TextDecoration? textDecoration;
  final int? maxLines;
  final TextAlign? textAlign;

  const TextWidget(
      this.title, {
        Key? key,
        this.color,
        this.textAlign,
        this.fontSize,
        this.decorationColor,
        this.fontFamily,
        this.isCenter = false,
        this.fontWeight,
        this.maxLines,
        this.textDecoration,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(
      title,
      textAlign: textAlign,
      softWrap: true,
      maxLines: maxLines ?? 1000,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        decoration: textDecoration,
        color: color ?? Appcolor.black,
        decorationColor: decorationColor ?? Appcolor.primary,
        fontSize: fontSize ?? 11.8,
        fontFamily: fontFamily ?? 'Poppins',
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
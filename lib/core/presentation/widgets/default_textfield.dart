import 'package:flutter/material.dart';

class DefaultTextfield extends StatelessWidget {
  const DefaultTextfield(
    this.hintText, {
    Key? key,
    required this.width,
    required this.height,
    this.fillColor = Colors.white,
    this.borderColor = Colors.black54,
    this.focusColor = Colors.black54,
    this.prefixIcon,
    this.maxLines = 1,
    this.suffixIcon,
    this.controller,
    this.obscureText = false,
    this.isEnabled = true,
    this.fontColor = Colors.black87,
    this.fontWeight = FontWeight.normal,
    this.keyboardType = TextInputType.text,
    this.borderRadius = 4.0,
    this.onChanged,
    this.fontSize = 14,
    this.contentPadding = const EdgeInsets.symmetric(
      vertical: 5,
      horizontal: 15,
    ),
  }) : super(key: key);

  final double width;
  final double height;
  final int maxLines;
  final String hintText;
  final Color fillColor;
  final Color borderColor;
  final Color focusColor;
  final Widget? prefixIcon;
  final IconData? suffixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  final Color fontColor;
  final FontWeight fontWeight;
  final bool isEnabled;
  final double borderRadius;
  final EdgeInsets contentPadding;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        enabled: isEnabled,
        controller: controller,
        obscureText: obscureText,
        maxLines: maxLines,
        onChanged: onChanged,
        keyboardType: keyboardType,
        style: TextStyle(
          fontSize: fontSize,
          color: isEnabled ? fontColor : Colors.black87,
          fontWeight: fontWeight,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: fontSize,
            color: Colors.black38,
            fontWeight: fontWeight,
          ),
          fillColor: fillColor,
          filled: true,
          contentPadding: contentPadding,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: BorderSide(color: focusColor),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: const BorderSide(color: Colors.white70),
          ),
          suffixIcon: suffixIcon == null
              ? null
              : Icon(
                  suffixIcon,
                  size: 20,
                  color: isEnabled ? Colors.black87 : Colors.black54,
                ),
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}

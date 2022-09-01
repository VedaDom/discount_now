import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KTextField extends StatelessWidget {
  final String title;
  final String? hintText;
  final String? suffixText;
  final String? prefixText;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final bool obscureText;
  final bool autofocus;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;

  const KTextField({
    Key? key,
    required this.title,
    this.hintText,
    this.hintStyle = const TextStyle(
      fontSize: 14,
      color: Color(0xFF697D95),
    ),
    this.controller,
    this.obscureText = false,
    this.onChanged,
    this.keyboardType,
    this.suffixText,
    this.prefixText,
    this.style,
    this.autofocus = false,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          focusNode: focusNode,
          autofocus: autofocus,
          controller: controller,
          obscureText: obscureText,
          onChanged: onChanged,
          keyboardType: keyboardType,
          style: style,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: context.theme.primaryColor,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            fillColor: const Color(0xFFEFF2F5),
            filled: true,
            hintText: hintText,
            hintStyle: hintStyle,
            suffixText: suffixText,
            prefixText: prefixText,
          ),
        ),
      ],
    );
  }
}

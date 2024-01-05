import 'package:flutter/material.dart';
import 'package:gcpro/utils/app_theme.dart';
import 'package:gcpro/utils/text_styles.dart';
import 'package:gcpro/utils/widgets/image/svg_image_widget.dart';
import 'package:get/get.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    this.hintText,
    this.controller,
    this.obscureText,
    this.keyboardType,
    this.icon,
    super.key,
  });

  final String? hintText, icon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * .88,
      height: 55,
      child: TextFormField(
        obscureText: obscureText ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.all(15),
            child: SvgImageWidget(
              image: icon,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyles.white416,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(64),
            borderSide: BorderSide(
              color: AppTheme.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(64),
            borderSide: BorderSide(
              color: AppTheme.white,
            ),
          ),
        ),
      ),
    );
  }
}

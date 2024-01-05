import 'package:flutter/material.dart';
import 'package:gcpro/utils/text_styles.dart';

class RichTextButtonWidget extends StatelessWidget {
  RichTextButtonWidget(
      {this.onPressFunction, this.fText, this.sText, super.key});

  Function()? onPressFunction;
  String? fText, sText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressFunction,
        child: RichText(
            text: TextSpan(children: [
          TextSpan(text: fText.toString(), style: TextStyles.white80412),
          TextSpan(text: sText.toString(), style: TextStyles.white612)
        ])));
  }
}

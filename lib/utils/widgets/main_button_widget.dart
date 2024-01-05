import 'package:flutter/material.dart';
import 'package:gcpro/utils/app_theme.dart';
import 'package:gcpro/utils/text_styles.dart';
import 'package:get/get.dart';

class MainButtonWidget extends StatelessWidget {
  Function()? onPressFunction;
  String? stringText;

  MainButtonWidget(
      {super.key,
      this.onPressFunction,
      this.stringText,
       });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * .746,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressFunction,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29),
            side: BorderSide(
              color: AppTheme.primaryColor,
            ),
          ),
        ),
        child: Text(stringText.toString(),
            style:  TextStyles.black518),
      ),
    );
  }
}

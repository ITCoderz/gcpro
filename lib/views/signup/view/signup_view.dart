import 'package:flutter/material.dart';
import 'package:gcpro/utils/app_icons.dart';
import 'package:gcpro/utils/app_theme.dart';
import 'package:gcpro/utils/gaps.dart';
import 'package:gcpro/utils/text_styles.dart';
import 'package:gcpro/utils/widgets/main_button_widget.dart';
import 'package:gcpro/utils/widgets/rich_text_button_widget.dart';
import 'package:gcpro/utils/widgets/text_field_widget.dart';
import 'package:gcpro/views/signup/controller/signup_controller.dart';
import 'package:get/get.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignupController>();
    return Scaffold(
      backgroundColor: AppTheme.black,
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
        leading: IconButton(
            onPressed: () {},
            iconSize: 24,
            icon: Icon(
              Icons.arrow_back,
              color: AppTheme.white,
            )),
        actions: [
          Icon(
            Icons.star_border,
            color: AppTheme.white,
            size: 20,
          ),
          horizontalGap(5),
          Icon(
            Icons.more_vert_outlined,
            color: AppTheme.white,
            size: 24,
          ),
          horizontalGap(10)
        ],
      ),
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalGap(context.height * .084),
              const Text(
                "Sign up",
                style: TextStyles.primary620,
              ),
              verticalGap(context.height * .018),
              SizedBox(
                width: context.width * .781,
                child: const Text(
                  "Using hello@ui-kit.co to sign up.",
                  style: TextStyles.white80414,
                  textAlign: TextAlign.center,
                ),
              ),
              verticalGap(context.height * .036),
              const TextFieldWidget(
                hintText: "Name",
                icon: AppIcons.user,
              ),
              verticalGap(context.height * .018),
              const TextFieldWidget(
                hintText: "+00 00000000",
                icon: AppIcons.phone,
                keyboardType: TextInputType.phone,
              ),
              verticalGap(context.height * .018),
              TextFieldWidget(
                hintText: "Password",
                icon: AppIcons.lock,
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MainButtonWidget(
            onPressFunction: () {},
            stringText: "Login",
          ),
          verticalGap(context.height * .077),
        ],
      ),
    );
  }
}

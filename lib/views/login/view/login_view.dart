import 'package:flutter/material.dart';
import 'package:gcpro/utils/app_icons.dart';
import 'package:gcpro/utils/app_routes.dart';
import 'package:gcpro/utils/app_theme.dart';
import 'package:gcpro/utils/gaps.dart';
import 'package:gcpro/utils/text_styles.dart';
import 'package:gcpro/utils/widgets/main_button_widget.dart';
import 'package:gcpro/utils/widgets/rich_text_button_widget.dart';
import 'package:gcpro/utils/widgets/text_field_widget.dart';
import 'package:gcpro/views/login/controller/login_controller.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();
    return Scaffold(
      backgroundColor: AppTheme.black,
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalGap(context.height * .113),
              const Text(
                "Let's get started!",
                style: TextStyles.primary620,
              ),
              verticalGap(context.height * .018),
              SizedBox(
                width: context.width * .781,
                child: const Text(
                  "Login to access your bookmarks and personal preferences.",
                  style: TextStyles.white80414,
                  textAlign: TextAlign.center,
                ),
              ),
              verticalGap(context.height * .094),
              const TextFieldWidget(
                hintText: "Username",
                icon: AppIcons.user,
              ),
              verticalGap(context.height * .018),
              TextFieldWidget(
                hintText: "Password",
                icon: AppIcons.lock,
                obscureText: true,

              ),
              SizedBox(
                width: context.width * .88,
                child: Row(
                  children: [
                    Obx(() => Checkbox(
                        side: BorderSide(color: AppTheme.white),
                        activeColor: AppTheme.primaryColor,
                        value: controller.checkValue.value,
                        onChanged: (value) {
                          controller.checkValue.value = value!;
                        })),
                    Text(
                      "Keep me logged in",
                      style: TextStyles.white415,
                    ),
                  ],
                ),
              )
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
          verticalGap(context.height * .01),
          RichTextButtonWidget(
            fText: "No account yet? ",
            sText: "Register here.",
            onPressFunction: () {
              Get.toNamed(AppRoutes.signup);
            },
          ),
          verticalGap(context.height * .01),
        ],
      ),
    );
  }
}

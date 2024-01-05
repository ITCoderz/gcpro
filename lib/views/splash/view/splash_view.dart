import 'package:flutter/material.dart';
import 'package:gcpro/utils/app_images.dart';
import 'package:gcpro/utils/app_theme.dart';
import 'package:gcpro/utils/gaps.dart';
import 'package:gcpro/utils/text_styles.dart';
import 'package:gcpro/utils/widgets/image/image_widget.dart';
import 'package:gcpro/views/splash/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SplashController>();
    return Scaffold(
      backgroundColor: AppTheme.black,
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageWidget(
              image: AppImages.logo,
              width: context.width * .234,
              height: 88,
            ),
            verticalGap(context.height * .157),
            const Text(
              "GCPro",
              style: TextStyles.white624,
            )
          ],
        ),
      ),
    );
  }
}

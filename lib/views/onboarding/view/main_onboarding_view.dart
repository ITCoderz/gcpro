import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gcpro/utils/app_routes.dart';
import 'package:gcpro/utils/app_theme.dart';
import 'package:gcpro/utils/gaps.dart';
import 'package:gcpro/utils/text_styles.dart';
import 'package:gcpro/views/onboarding/controller/onboarding_controller.dart';
import 'package:gcpro/views/onboarding/view/onboarding_view.dart';
import 'package:get/get.dart';

class MainOnboardingView extends StatelessWidget {
  const MainOnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();

    return Scaffold(
      backgroundColor: AppTheme.black,
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: controller.data.length,
              carouselController: controller.carouselController,
              options: CarouselOptions(
                height: context.height - 84,
                animateToClosest: false,
                viewportFraction: 1,
                autoPlay: false,
                onPageChanged: (index, _) {
                  controller.changePageIndex(index);
                },
              ),
              itemBuilder: (context, index, realIndex) {
                return OnboardingView(
                  imagePath: controller.data[index]['image'],
                  title: controller.data[index]['title'],
                  textAlignDesc:
                      index == 0 ? TextAlign.start : TextAlign.center,
                  description: controller.data[index]['desc'],
                  topText: controller.data[index]['topText'],
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: controller.data.asMap().entries.map((entry) {
                  return Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.currentPageIndex.value == entry.key
                          ? AppTheme.primaryColor
                          : AppTheme.white50,
                    ),
                  );
                }).toList(),
              )),
          verticalGap(27),
          GestureDetector(
            onTap: () {
              if (controller.isLastPage) {
                Get.offNamed(AppRoutes.login);
              } else {
                controller.nextPage();
              }
            },
            child: Container(
              height: 36,
              width: context.width * .189,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppTheme.white40)),
              child: const Center(
                child: Text(
                  "NEXT",
                  style: TextStyles.primary614,
                ),
              ),
            ),
          ),
          verticalGap(13),
        ],
      ),
    );
  }
}

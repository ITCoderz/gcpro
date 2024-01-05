import 'package:flutter/material.dart';
import 'package:gcpro/utils/gaps.dart';
import 'package:gcpro/utils/text_styles.dart';
import 'package:gcpro/utils/widgets/image/image_widget.dart';
import 'package:get/get.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({
    this.topText,
    this.imagePath,
    this.title,
    this.description,
    this.textAlignDesc,
    super.key,
  });

  String? topText;
  String? imagePath;
  String? title;
  String? description;
  TextAlign? textAlignDesc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalGap(context.height * .125),
        SizedBox(
          width: context.width * .781,
          child: Text(
            topText.toString(),
            style: TextStyles.primary620,
            textAlign: TextAlign.center,
          ),
        ),
        verticalGap(context.height * .11),
        ImageWidget(
          image: imagePath,
          fit: BoxFit.fill,
          width: context.width * .48,
          height: 180,
        ),
        verticalGap(context.height * .024),
        Text(
          title.toString(),
          style: TextStyles.primary620,
        ),
        verticalGap(context.height * .024),
        SizedBox(
          width: context.width * .781,
          child: Text(
            description.toString(),
            textAlign: textAlignDesc ?? TextAlign.center,
            style: TextStyles.white80414,
          ),
        ),
      ],
    );
  }
}

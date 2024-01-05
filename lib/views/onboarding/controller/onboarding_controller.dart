import 'package:carousel_slider/carousel_controller.dart';
import 'package:gcpro/utils/app_images.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentPageIndex = 0.obs;
  final CarouselController carouselController = CarouselController();

  void changePageIndex(int index) {
    currentPageIndex.value = index;
  }

  bool get isLastPage {
    return currentPageIndex.value == data.length - 1;
  }

  void nextPage() {
    if (!isLastPage) {
      currentPageIndex.value++;
      carouselController.nextPage();
    }
  }

  final data = [
    {
      "topText": "GCPro your Gaurad for for Green Professional Driving",
      "image": AppImages.dog,
      "title": "",
      "desc": "Drive Time Tracking\notification to avoid violation\nReporting\nValidation\nCommunication\nProfile Data Tracking"
    },
    {
      "topText": "todo: add proper screenshot",
      "image": AppImages.dog,
      "title": "Driving Tracking",
      "desc": "Automatically track driving times Notify you to recored personal drive time"
    },
    {
      "topText": "",
      "image": AppImages.dog,
      "title": "Alarm's and notification",
      "desc": "Notifies you before violating any driving time constraints enable you to recored justification for any violation"
    },
    {
      "topText": "",
      "image": AppImages.dog,
      "title": "Reporting",
      "desc": "Allows you to export daily and weekly an quarterly  reports allows to share reports with employer and authroties Allows you to save the reports to your own google account for extra privacy"
    },
    {
      "topText": "",
      "image": AppImages.dog,
      "title": "Support",
      "desc": "Provide a user manual allows you to understand the requirement by law and how GCPro make you full complaint. allow you to ask expert and get answers also to see all answer of other users questions"
    },
    {
      "topText": "",
      "image": AppImages.dog,
      "title": "Validation",
      "desc": "Allows you to show authorities all the evident that the record are correct and was not changed by any mean Allows you to show the certification of the app by authorities"
    },
    {
      "topText": "",
      "image": AppImages.dog,
      "title": "Green Drive",
      "desc": "Green DriveCalculate fuel consumption rate provide you with personalised recommendation to reduce fuel consumption"
    }
    
  ];
}

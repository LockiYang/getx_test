import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/app/modules/app_job/job_home/job_home_view.dart';
import 'package:getx_test/app/modules/app_job/job_message/job_message_controller.dart';
import 'package:getx_test/app/modules/app_job/job_message/job_message_view.dart';
import 'package:getx_test/app/modules/app_job/job_my/job_my_controller.dart';
import 'package:getx_test/app/modules/app_job/job_my/job_my_view.dart';
import 'package:getx_test/app/modules/app_job/services/user_service.dart';

class AppJobController extends GetxController {
  int currentIndex = 0;
  DateTime? lastPopTime;

  final List<Widget> navbarBodys = [
    JobHomeView(),
    JobMessageView(),
    JobMyView()
  ];

  late PageController pageController;

  setIndex(i) {
    currentIndex = i;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentIndex);
    pageController.addListener(() {
      var index = pageController.page;

      /// 进入我的页面，更新页面数据
      if (index == navbarBodys.length - 1) {
        Get.find<JobMyController>().refreshPage();
      }
      if (index == navbarBodys.length - 2) {
        if (UserService.to.isLogin.value) {
          Get.find<JobMessageController>().refreshPage();
        }
      }
    });
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPageController extends ChangeNotifier {
  final RxInt currentPage;

  AppPageController({required this.currentPage});

  final PageController pageController = PageController();

  void changePage(int index, [context]) async {
    if (context != null) {
      FocusScope.of(context).unfocus();
    }

    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );

    Future.delayed(const Duration(milliseconds: 100), () {
      currentPage.value = index;
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

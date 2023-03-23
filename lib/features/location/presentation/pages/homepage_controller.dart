import 'package:bubba/constants/pages.dart';
import 'package:bubba/features/location/application/homepage_service.dart';
import 'package:bubba/utils/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageController extends Controller {
  final HomePageService homePageService;

  HomePageController({required this.homePageService});

  void goToMapPage() async {
    // await homePageService.locationPermission();
    // if (mounted && context != null) {
    // }
    if (mounted && context != null) {
      Navigator.of(context!).pushNamed(Pages.map);
    }
  }
}

final homePageControllerProvider =
    StateNotifierProvider.autoDispose<HomePageController, AsyncValue<void>>(
        (ref) => HomePageController(
            homePageService: ref.watch(homePageServiceProvider)));

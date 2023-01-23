import 'package:get/utils.dart';

import 'package:get/get.dart';

//Classe de dimensões classificação
class Dimensions {
  static double screenHeigth = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeigth / 2.64;
  static double pageViewContainer = screenHeigth / 3.84;
  static double pageTextContainer = screenHeigth / 7.03;
}

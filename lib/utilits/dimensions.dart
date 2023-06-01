import 'package:get/utils.dart';
import 'package:get/get.dart';

//Classe de dimensões classificação
class Dimensions {
  static double screenHeigth = Get.context!.height;
  static double screenWidth = Get.context!.width;
  // Dimensoes pra colunas
  static double pageView = screenHeigth / 2.64;
  static double pageViewContainer = screenHeigth / 3.84;
  static double pageTextContainer = screenHeigth / 7.03;

  //Dimensoes height pra screen(Padding and Margin) de letras
  static double heigth10 = screenHeigth / 84.4;
  static double heigth15 = screenHeigth / 56.27;
  static double heigth20 = screenHeigth / 42.2;
  static double heigth30 = screenHeigth / 28.13;
  static double heigth45 = screenHeigth / 18.76;

  //Dimensoes width pra screen(Padding and Margin) de letras
  static double width10 = screenHeigth / 84.4;
  static double width15 = screenHeigth / 56.27;
  static double width20 = screenHeigth / 42.2;
  static double width30 = screenHeigth / 28.13;

//Fontes
  static double font16 = screenHeigth / 52.75;
  static double font20 = screenHeigth / 42.2;
  static double font26 = screenHeigth / 32.46;

  // Radius
  static double radius15 = screenHeigth / 56.17;
  static double radius20 = screenHeigth / 42.2;
  static double radius30 = screenHeigth / 28.13;
// Icones
  static double iconSize24 = screenHeigth / 35.17;
  static double iconSize16 = screenHeigth / 52.75;

//lista de visualizações ou imagens
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;

  //Popular Inclusao
  static double popularFoodImgSize = screenHeigth / 2.41;
  //Butões
  static double bottomHeigthBar = screenHeigth / 7.03;
}

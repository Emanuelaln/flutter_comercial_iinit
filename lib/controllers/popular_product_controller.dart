import 'dart:ffi';

import 'package:app2/data/api/repository/popular_produt_repo.dart';
import 'package:app2/models/produtcs_models.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PopularProductController extends GetxController {
  //Controlador de produtos obtiidos aprtir de uma lista
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  Future<void> getPopularProdustList() async {
    Response response = await popularProductRepo.getPopularProdustList();
    if (response.statusCode == 200) {
      print("Indo produtos ");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).produts);
      update();
    } else {}
  }
}

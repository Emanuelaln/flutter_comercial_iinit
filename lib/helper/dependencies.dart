import 'package:app2/controllers/popular_product_controller.dart';
import 'package:app2/data/api/api_client.dart';
import 'package:app2/data/api/repository/popular_produt_repo.dart';
import 'package:get/instance_manager.dart';

Future<void> init() async {
  //Api do Cliente
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://mvs.bslmeiyu.com"));
  //Reposiçao de Produto
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //Controllers(Processamento)
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}

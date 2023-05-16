import 'package:app2/data/api/api_client.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProdustList() async {
    return await apiClient.get("https://www.dbestech.com/api/produst/list ");
  }
}

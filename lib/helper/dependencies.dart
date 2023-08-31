import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

import '../data/api/api_client.dart';
import '../data/repository/popular_product_repo.dart';

Future<void> init()async {    // eta kivabe kaz kore ??
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl:"https://www.dbestech.com"));
  //repository

  Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));


}
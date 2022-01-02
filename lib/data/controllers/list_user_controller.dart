import 'package:get/get.dart';
import 'package:suitmedia_app_test/data/helper/network/network_helper.dart';
import 'package:suitmedia_app_test/data/helper/network/urls.dart';
import 'package:suitmedia_app_test/data/models/dummy_data.dart';

enum FetchDummyDataResult { success, failure }

class ListUserController extends GetxController {
  final NetworkHelper _helper = NetworkHelper();
  Rx<DummyData> dummyData = DummyData().obs;

  Future<FetchDummyDataResult> fetchData() async {
    return _helper.get(
      path: Urls.dummyUrl,
      isRawResult: true,
      queryParameters: {'page': '1', 'per_page': '10'},
      onSuccess: (data) {
        dummyData = dummyDataFromJson(data).obs;
        return FetchDummyDataResult.success;
      },
      onError: (error) {
        print(error);
        return FetchDummyDataResult.failure;
      },
    );
  }
}

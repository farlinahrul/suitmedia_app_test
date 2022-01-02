import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_app_test/data/controllers/dashboard_controller.dart';
import 'package:suitmedia_app_test/data/controllers/list_user_controller.dart';
import 'package:suitmedia_app_test/modules/list_user_page/widgets/tile_user.dart';

class ListUserPage extends StatelessWidget {
  static const routeName = '/list-user';

  final ListUserController _listUserController = Get.put(ListUserController());

  SingleChildScrollView listUser() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _listUserController.dummyData.value.data?.length,
        itemBuilder: (context, index) {
          String fullname =
              '${_listUserController.dummyData.value.data?[index].firstName} ${_listUserController.dummyData.value.data?[index].lastName}';
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Get.back();
                Get.find<DashboardController>().changeName(fullname);
              },
              child: UserTile(
                username: fullname,
                email:
                    '${_listUserController.dummyData.value.data?[index].email}',
                photoProfile:
                    'https://krs.umm.ac.id/Poto/2019/201910370311295.JPG',
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Third Screen'),
      ),
      body: FutureBuilder(
        future: _listUserController.fetchData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            default:
              if (snapshot.hasError) {
                return Center(
                  child: Text('Error'),
                );
              }
              if (snapshot.data == FetchDummyDataResult.success) {
                return listUser();
              } else {
                return Center(
                  child: Text('ERROR'),
                );
              }
          }
        },
      ),
    );
  }
}

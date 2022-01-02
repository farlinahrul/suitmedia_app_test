import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_app_test/data/controllers/dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  static const routeName = '/dashboard-page';

  final DashboardController _dashboardController = Get.put(
    DashboardController(),
    permanent: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _dashboardController.fetchData(),
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
                return ListView.builder(
                  itemCount: _dashboardController.dummyData.value.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container();
                  },
                );
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

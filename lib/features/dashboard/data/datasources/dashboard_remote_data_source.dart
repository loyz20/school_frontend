import '../models/dashboard_model.dart';

abstract class DashboardRemoteDataSource {
  Future<DashboardModel> fetchDashboardData();
}

class DashboardRemoteDataSourceImpl implements DashboardRemoteDataSource {
  @override
  Future<DashboardModel> fetchDashboardData() async {
    await Future.delayed(Duration(seconds: 1)); // Simulasi delay API
    return DashboardModel.mock();
  }
}

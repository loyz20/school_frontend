import '../entities/dashboard.dart';

abstract class DashboardRepository {
  Future<DashboardData> getDashboardData();
}

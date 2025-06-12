import '../entities/dashboard.dart';
import '../repositories/dashboard_repository.dart';

class GetDashboardData {
  final DashboardRepository repository;

  GetDashboardData(this.repository);

  Future<DashboardData> call() {
    return repository.getDashboardData();
  }
}

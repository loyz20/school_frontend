import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/dashboard.dart';
import '../../domain/usecases/get_dashboard_data.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetDashboardData getDashboardData;

  DashboardBloc({required this.getDashboardData}) : super(DashboardInitial()) {
    on<LoadDashboard>((event, emit) async {
      emit(DashboardLoading());
      try {
        final data = await getDashboardData();
        emit(DashboardLoaded(data));
      } catch (_) {
        emit(DashboardError('Gagal memuat data'));
      }
    });
  }
}

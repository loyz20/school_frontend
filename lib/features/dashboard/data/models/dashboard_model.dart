import '../../domain/entities/dashboard.dart';

class DashboardModel extends DashboardData {
  DashboardModel({
    required super.name,
    required super.studentId,
    required super.campus,
    required super.schedule,
    required super.news,
  });

  factory DashboardModel.mock() {
    return DashboardModel(
      name: 'Jonathan',
      studentId: '5161011016',
      campus: 'Harvard Kampus 1',
      schedule: [
        ScheduleItem(course: 'Rekayasa Web Praktik', time: '09:40 - 12:10', room: 'E.3.3'),
      ],
      news: [
        NewsItem(title: 'Kegiatan Mahasiswa di Lab', imageUrl: 'assets/images/news1.png'),
      ],
    );
  }
}

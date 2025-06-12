class DashboardData {
  final String name;
  final String studentId;
  final String campus;
  final List<ScheduleItem> schedule;
  final List<NewsItem> news;

  DashboardData({
    required this.name,
    required this.studentId,
    required this.campus,
    required this.schedule,
    required this.news,
  });
}

class ScheduleItem {
  final String course;
  final String time;
  final String room;

  ScheduleItem({
    required this.course,
    required this.time,
    required this.room,
  });
}

class NewsItem {
  final String title;
  final String imageUrl;

  NewsItem({
    required this.title,
    required this.imageUrl,
  });
}

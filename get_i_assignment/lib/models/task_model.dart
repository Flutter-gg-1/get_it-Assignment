class TaskModel {
  TaskModel({
    required this.id,
    required this.title,
    required this.category,
    this.completed = false,
  });
  late final int id;
  late final String title;
  late final String category;
  bool? completed;

  TaskModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    category = json['category'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['category'] = category;
    data['completed'] = completed;
    return data;
  }
}

class DataModel {
  int userId;
  int id;
  String title;
  String body;

  DataModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    userId: json["userId"] ?? 0,
    id: json["id"] ?? 0,
    title: json["title"] ?? '',
    body: json["body"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}

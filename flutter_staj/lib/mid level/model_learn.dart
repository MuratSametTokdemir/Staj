class PostModel {
  int? userId;
  int? Id;
  String? title;
  String? body;
}

class PostModel2 {
  int userId;
  int Id;
  String title;
  String body;
  PostModel2(this.userId, this.Id, this.body, this.title);
}

class PostModel3 {
  final int userId;
  final int Id;
  final String title;
  final String body;

  PostModel3(this.userId, this.Id, this.title, this.body);
}

class PostModel4 {
  final int userId;
  final int Id;
  final String title;
  final String body;

  PostModel4(
      {required this.userId,
      required this.Id,
      required this.title,
      required this.body});
}

class PostModel5 {
  final int _userId;
  final int _Id;
  final String _title;
  final String _body;
  int get UserId => UserId;
  PostModel5({
    required int userId,
    required int Id,
    required String title,
    required String body,
  })  : _userId = userId,
        _Id = Id,
        _title = title,
        _body = body;
}

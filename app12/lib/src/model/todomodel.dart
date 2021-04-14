class TodoModel {

  String title;
  int id;
  int userId;
  bool completed;

  TodoModel ({this.title, this.id, this.userId, this.completed});
  
  TodoModel.fromJson (Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

}
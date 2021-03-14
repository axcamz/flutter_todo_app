class Todo {
  String title;
  bool status;

  Todo({this.title, this.status});
}

List<Todo> lists = [
  Todo(title: "Mempelajari tentang Flutter", status: false),
  Todo(title: "Mempelajari tentang Dart", status: false),
  Todo(title: "Mempelajari tentang React JS", status: false),
  Todo(title: "Mempelajari tentang Laravel", status: false),
  Todo(title: "Mempelajari tentang Rest", status: false),
  Todo(title: "Mempelajari tentang Graph QL", status: true),
];

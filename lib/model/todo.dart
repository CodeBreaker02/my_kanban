class ToDo {
  late bool isDone;
  String? id;
  String? title;

  ToDo({
    this.isDone = false,
    required this.id,
    required this.title,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(
        id: '1',
        title: 'Create a new app',
        isDone: true,
      ),
      ToDo(
        id: '2',
        title: 'Go to the gym',
        isDone: false,
      ),
      ToDo(
        id: '3',
        title: 'Buy a new phone',
        isDone: false,
      ),
      ToDo(
        id: '4',
        title: 'Go to the gym',
        isDone: false,
      ),
      ToDo(
        id: '5',
        title: 'Create a new app1',
        isDone: true,
      ),
    ];}
}
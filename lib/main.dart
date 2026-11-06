import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(debugShowCheckedModeBanner: false, home: TodoPage()),
);

class TodoItem {
  const TodoItem(this.id, this.title);
  final int id;
  final String title;
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});
  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // Уже готово: данные живут только в памяти этого State.
  final todos = [
    const TodoItem(1, 'Повторить Navigator'),
    const TodoItem(2, 'Подготовить презентацию'),
  ];
  int nextId = 3;

  Future<void> openAddPage() async {
    // TODO 1: собрать список со Slidable и открыть AddTodoPage через MaterialPageRoute<String>.
    // Дождаться String?, проверить mounted и null, добавить TodoItem.
    // Для id используйте nextId++, изменение списка — внутри setState.
  }

  Future<void> deleteTodo(TodoItem todo) async {
    // TODO 2: showDialog<bool> с названием задачи и двумя кнопками.
    // «Отмена» возвращает false, «Удалить» — true, Back даёт null.
    // После await проверить mounted; удалять по id только при true.
  }

  @override
  Widget build(BuildContext context) {
    // Часть TODO 1: Scaffold, AppBar, «Добавить» и ListView делаете сами.
    // У строки Slidable с устойчивым ключом; свайп показывает «Удалить».
    // Действие вызывает deleteTodo(todo). Сам свайп ничего не удаляет.
    return const Scaffold(body: Center(child: Text('Начните с TODO 1')));
  }
}

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});
  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  // Контроллер и его освобождение уже готовы.
  final controller = TextEditingController();
  String? errorText;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void save() {
    // TODO 3: trim текста. Если пусто — errorText = «Введите название»
    // через setState и остаться на экране. Иначе pop<String> с названием.
  }

  @override
  Widget build(BuildContext context) {
    // TODO 4: Scaffold с AppBar «Новая задача», TextField и «Сохранить».
    // У поля labelText «Название», controller и errorText из State.
    // Кнопка вызывает save. Контент прокручивается при открытой клавиатуре.
    return const Scaffold(
      body: Center(child: Text('Реализуйте экран добавления: TODO 3–4')),
    );
  }
}

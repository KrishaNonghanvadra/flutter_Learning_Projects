import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/todo.dart';
import 'todo_provider.dart';

enum TodoFilter { all, completed, pending }

final todoFilterProvider = NotifierProvider<TodoFilterNotifier, TodoFilter>(
  TodoFilterNotifier.new,
);

class TodoFilterNotifier extends Notifier<TodoFilter> {
  @override
  TodoFilter build() => TodoFilter.all;

  void changeFilter(TodoFilter filter) => state = filter;
}

final filteredTodosProvider = Provider<List<Todo>>((ref) {
  final todos = ref.watch(todoProvider);
  final filter = ref.watch(todoFilterProvider);

  switch (filter) {
    case TodoFilter.completed:
      return todos.where((todo) => todo.isCompleted).toList();
    case TodoFilter.pending:
      return todos.where((todo) => !todo.isCompleted).toList();
    case TodoFilter.all:
      return todos;
  }
});

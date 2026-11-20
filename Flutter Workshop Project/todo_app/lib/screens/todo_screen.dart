import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/providers/filter_provider.dart';
import 'package:todo_app/providers/todo_provider.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(filteredTodosProvider);
    final currentFilter = ref.watch(todoFilterProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Todo Manager')),
      body: Column(
        children: [
          DropdownButton<TodoFilter>(
            value: currentFilter,
            items: TodoFilter.values.map((filter) {
              return DropdownMenuItem(
                value: filter,
                child: Text(filter.name.toUpperCase()),
              );
            }).toList(),
            onChanged: (filter) {
              if (filter != null) {
                ref.read(todoFilterProvider.notifier).changeFilter(filter);
              }
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return ListTile(
                  leading: Checkbox(
                    value: todo.isCompleted,
                    onChanged: (_) =>
                        ref.read(todoProvider.notifier).toggleTodo(todo.id),
                  ),
                  title: Text(todo.title),
                  subtitle: Text(todo.description),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () =>
                        ref.read(todoProvider.notifier).deleteTodo(todo.id),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref
            .read(todoProvider.notifier)
            .addTodo('Learn Riverpod', 'Practice CRUD'),
        child: const Icon(Icons.add),
      ),
    );
  }
}

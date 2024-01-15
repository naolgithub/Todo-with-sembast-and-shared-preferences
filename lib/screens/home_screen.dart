import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_sembast_shared_preferences/providers/drawer_index_provider.dart';
import 'package:todo_sembast_shared_preferences/screens/collections/collections_screen.dart';
import 'package:todo_sembast_shared_preferences/screens/notes/notes_screen.dart';
import 'package:todo_sembast_shared_preferences/screens/tasks/tasks_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(drawerIndexProvider);
    return Scaffold(
      body: [
        const TasksScreen(),
        const CollectionsScreen(),
        const NotesScreen(),
      ][index],
    );
  }
}

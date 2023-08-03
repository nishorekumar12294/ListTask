import 'package:flutter/material.dart';
import 'package:list_task_example/list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListWidget(),
    );
  }
}

class ListWidget extends StatelessWidget {
   const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Task'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => const ListItemWidget(),
      ),
    );
  }
}

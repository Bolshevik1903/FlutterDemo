import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.title, required this.add});
  final String title;
  final void Function(String) add;

  @override
  Widget build(BuildContext context) {
    String newTask = "";
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'New Task',
              hintText: 'Enter new task'
            ),
            onChanged: (value){
              newTask = value;
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          add(newTask);
          Navigator.pop(context);
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}

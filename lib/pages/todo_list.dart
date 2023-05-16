import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  TodoList({super.key});

  final names = ["Ana", "Juan", "Carlos"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To do App"),
      ),
      body:ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(title: Text(names[index])),
          );
        }
        ),
       /* ListView(
        children: const [
          ListTile(title: Text('List1'), subtitle: Text("Detail list 1"),),
          ListTile(title: Text("Item1"), leading: Icon(Icons.check_box)),
          ListTile(title: Text('Item2'),trailing: Icon(Icons.battery_full)),
          ListTile(leading: CircleAvatar(backgroundImage: NetworkImage("https://i.pinimg.com/564x/49/65/57/49655703146f97b3a4ffce910cf97154.jpg")))
        ],
      ) */
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add))
    );
  }
}
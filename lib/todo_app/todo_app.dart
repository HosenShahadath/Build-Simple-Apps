import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tasks[index]),
            );
      }),
      floatingActionButton: FloatingActionButton(onPressed: _addTask,
      child: Icon(Icons.add),
      ),
    );
  }

  void _addTask(){
    TextEditingController controller = TextEditingController();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('New Task'),
          content: TextField(controller: controller,),
          actions: [
            MaterialButton(onPressed: (){
              setState(() {
                tasks.add(controller.text);
                controller.clear();
              });
              Navigator.pop(context);
            },
              child: Text('Add'),
            )
          ],
        ));
  }
}




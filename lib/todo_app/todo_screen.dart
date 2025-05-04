import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(tasks[index]),
          )
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => _addTask(context),
      child: Icon(Icons.add),
      ),
    );
  }

  void _addTask(BuildContext context){
    // Prompt user to enter a task
    TextEditingController controller = TextEditingController();
    showDialog(context: context, builder: (context) => AlertDialog(
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
    ),
    );
  }

}

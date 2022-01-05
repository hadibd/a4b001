import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController taskController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List taskList = [];
  List dateList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTask();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.grey.shade300,
          child: taskList.isEmpty
              ? Center(
                  child: Text('You have no pending task'),
                )
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return taskCard(
                      date: dateList[index],
                      title: taskList[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: taskList.length)),
    );
  }

  addTask() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Add your task'),
            content: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Task Title'),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: taskController,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Task date'),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: dateController,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    taskController.clear();
                    dateController.clear();
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () {
                    taskList.add(taskController.text);
                    dateList.add(dateController.text);
                    taskController.clear();
                    dateController.clear();
                    Navigator.pop(context);
                    setState(() {});
                  },
                  child: const Text('Add')),
            ],
          );
        });
  }
}

class taskCard extends StatelessWidget {
  const taskCard({
    Key? key,
    required this.title,
    required this.date,
  }) : super(key: key);

  final title, date;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      child: ListTile(
        tileColor: Colors.white,
        leading: const CircleAvatar(),
        title: Text(title),
        subtitle: Text('Date: $date'),
        trailing: const Icon(Icons.check_box_outline_blank),
      ),
    );
  }
}

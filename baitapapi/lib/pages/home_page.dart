import 'package:flutter/material.dart';
import 'api_service.dart';
import 'task_detail_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<dynamic>> futureTasks;

  @override
  void initState() {
    super.initState();
    futureTasks = ApiService.fetchTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List')),
      body: FutureBuilder<List<dynamic>>(
        future: futureTasks,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return _buildEmptyState();
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var task = snapshot.data![index];
                return _buildTaskItem(task, context);
              },
            );
          }
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.assignment, size: 100, color: Colors.grey),
          SizedBox(height: 20),
          Text(
            "No Tasks Yet!",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text("Stay productive—add something to do"),
        ],
      ),
    );
  }

  Widget _buildTaskItem(task, BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(
          task['title'],
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(task['description']),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TaskDetailScreen(task)),
          );
        },
      ),
    );
  }
}

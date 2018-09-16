import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';
import 'package:focus/src/model/task.dart';

class WeeklyPage extends StatefulWidget {

  WeeklyPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return WeeklyPageState(title);
  }
}

class WeeklyPageState extends State<WeeklyPage> {
  List<Task> tasks = List<Task>();

  WeeklyPageState(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return _buildUi(context);
  }

  @override
  void initState() {
    super.initState();

    tasks.add(Task('Read 10 pages on The Third Door'));
    tasks.add(Task('Brainstorm on rewards'));
    tasks.add(Task('Need to plan my launch plan'));
  }

  Scaffold _buildUi(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: _buildList(context),
      ),
      bottomNavigationBar: BottomNavigation(current: 1,),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onAdd(context),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(15.0),
      itemCount: tasks.length,
      itemBuilder: (BuildContext context, int index) {

        return _buildRow(tasks[index]);
      }
    );
  }

  Widget _buildRow(Task task) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.assignment),
            title: Text(task.title),
            subtitle: Text('sample'),
            onTap: _onTap,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ActionChip(
                label: Text('Mark Done'),
                backgroundColor: Colors.green,
                onPressed: () => _onDone(task),
              ),
              SizedBox(
                width: 5.0,
                height: 5.0,
              ),
              ActionChip(
                label: Text('Mark Follow-up'),
                backgroundColor: Colors.amber,
                onPressed: () => _onFollowup(task),
              ),
              SizedBox(
                width: 5.0,
                height: 5.0,
              )
            ],
          )
        ],
      ),
    );
  }

  void _onDone(Task task) {
    print('Enters _onDone ${task.title}');
  }

  void _onFollowup(Task task) {
    print('Enters _onFollowup ${task.title}');
  }

  void _onTap() {
    setState(() {

    });
  }

  void _onAdd(BuildContext context) {
    Navigator.pushNamed(context, 'create');
  }
}
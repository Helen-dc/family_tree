import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: [
          const Text('Hello world!'),
          TextButton(
            onPressed: () async {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Alert'),
                    content: const Text(''),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Close'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text(
              'open alert',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('e');
            },
            child: const Text('invoke "e"'),
          ),
        ],
      ),
    );
  }
}

class ListViewTree extends StatelessWidget{
  const ListViewTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const <Widget>[
        Card(
          child: ListTile(
            title: Text("ФИО1"),
            subtitle: Text("год - год"),
          ),
        ),
        Card(
          child: ListTile(
            title: Text("ФИО2"),
            subtitle: Text("год - год"),
          ),
        ),
        Card(
          child: ListTile(
            title: Text("ФИО3"),
            subtitle: Text("год - год"),
          ),
        ),
        Card(
          child: ListTile(
            title: Text("ФИО4"),
            subtitle: Text("год - год"),
          ),
        ),
      ]
    );
  }
}
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
        ),
        body: //const MyBody(),
        const ListViewTree(),
      ),
    ),
  );
}

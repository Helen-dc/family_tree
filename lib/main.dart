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

class ListViewTree extends StatelessWidget {
  final titles = ["ФИО1", "ФИО2", "ФИО3", "ФИО4"];
  final subtitles = ["год - год", "год - год", "год - год", "год - год"];

  ListViewTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(titles[index]),
              subtitle: Text(subtitles[index]),
            ),
          );
        },
        padding: const EdgeInsets.all(8)
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
        body: ListViewTree(),
      ),
    ),
  );
}

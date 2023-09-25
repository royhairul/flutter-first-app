import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(
              child: Text(
                "Project UJI COBA",
                style: TextStyle(color: Colors.white),
              ),
            ),
            leading: Icon(Icons.home),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.menu), onPressed: () => {},)
            ],
          ),
          body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bWFuJTIwYXZhdGFyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
                  ),
                  title: Text(
                    "Purnomo Sigit",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    'Jabatan : Direktur',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          )),
    );
  }
}
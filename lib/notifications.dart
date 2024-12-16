import 'package:flutter/material.dart';


class notipage extends StatefulWidget {
  @override
  State<notipage> createState() => _MyAppState();
}

class _MyAppState extends State<notipage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notifications',
      home: NotificationsPage(),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Notifications'),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide())),
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification 1'),
              subtitle: Text('Sucessfully signed in to the app'),
              trailing: Text('2 min ago'),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide())),
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification 2'),
              subtitle: Text('Welcome the housing valley.'),
              trailing: Text('10 min ago'),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide())),
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification 3'),
              subtitle: Text('Happy to have you on our site.'),
              trailing: Text('1 hour ago'),
            ),
          ),
        ],
      ),
    );
  }
}
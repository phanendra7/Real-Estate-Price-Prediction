import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page1/notifications.dart';
import 'package:page1/predict.dart';
import 'package:page1/samplepages/let.dart';
import 'package:page1/mpage.dart';
import 'package:page1/newspage.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: profile(),
));

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<profile> {
  final user = FirebaseAuth.instance.currentUser!;
  bool isDarkModeEnabled = false;

  void handleLogout(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: isDarkModeEnabled ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("My Profile"),
            backgroundColor: Colors.blue[900],
          ),
          body: Column(children: [
            Container(
              padding: const EdgeInsets.all(9.0),
              width: 400,
              height: 110,
              color: Colors.blue[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.account_circle,
                      size: 85, color: Colors.blue[900]),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 5),
                      Text(
                        user.email!,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey[900],
                        ),
                      ),
                      Text(
                        '78428xxxxx',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.language, color: isDarkModeEnabled ?Colors.white:Colors.black),
                      title: Text('Language'),
                      trailing:
                      Icon(Icons.arrow_forward_outlined, color: isDarkModeEnabled ?Colors.white:Colors.black),
                    ),
                    ListTile(
                      leading:
                      Icon(Icons.favorite_border_outlined, color: isDarkModeEnabled ?Colors.white:Colors.black),
                      title: Text('My Favorites'),
                      trailing:
                      Icon(Icons.arrow_forward_outlined, color: isDarkModeEnabled ?Colors.white:Colors.black),
                    ),
                    ListTile(
                      leading:
                      Icon(Icons.notification_add_outlined, color: isDarkModeEnabled ?Colors.white:Colors.black),
                      title: Text('Notification'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => notipage()),
                        );
                      },
                      trailing:
                      Icon(Icons.arrow_forward_outlined, color: isDarkModeEnabled ?Colors.white:Colors.black),
                    ),
                    ListTile(
                      leading: Icon(Icons.history, color: isDarkModeEnabled ?Colors.white:Colors.black),
                      title: Text('History'),
                      trailing:
                      Icon(Icons.arrow_forward_outlined, color: isDarkModeEnabled ?Colors.white:Colors.black),
                    ),
                    ListTile(
                      leading: Icon(Icons.security, color: isDarkModeEnabled ?Colors.white:Colors.black),
                      title: Text('Security'),
                      trailing:
                      Icon(Icons.arrow_forward_outlined, color: isDarkModeEnabled ?Colors.white:Colors.black),
                    ),
                    ListTile(
                      leading: Icon(Icons.dark_mode_outlined, color: isDarkModeEnabled ?Colors.white:Colors.black),
                      title: Text('Dark Mode'),
                      trailing: Switch(
                        value: isDarkModeEnabled,
                        onChanged: (value) {
                          setState(() {
                            isDarkModeEnabled = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.help, color: isDarkModeEnabled ?Colors.white:Colors.black),
                      title: Text('Help Center'),
                      trailing:
                      Icon(Icons.arrow_forward_outlined, color: isDarkModeEnabled ?Colors.white:Colors.black),
                    ),
                    ListTile(
                      leading: Icon(Icons.man,color: isDarkModeEnabled ?Colors.white:Colors.black),
                      title: Text('Invite Friends'),
                      trailing: Icon(Icons.arrow_forward_outlined,color: isDarkModeEnabled ?Colors.white:Colors.black),
                    ),
                    ListTile(
                        leading: Icon(Icons.logout_outlined,color: Colors.red),
                        title: Text('Log Out'),
                        onTap: () => FirebaseAuth.instance.signOut(),
                    )
                  ]
              ),
            ),
          ]
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.home_outlined),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => page()
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.currency_rupee_rounded),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => predict()
                      ),
                    );
                  },
                ),
                // IconButton(
                //   icon: const Icon(Icons.favorite_border_outlined),
                //   onPressed: () {},
                // ),
                IconButton(
                  icon: const Icon(Icons.newspaper_outlined),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => news()
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.account_circle),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        )
    );
  }
}

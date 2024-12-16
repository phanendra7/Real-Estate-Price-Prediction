import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key?key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}
class _homepageState extends State<homepage>{
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('signed in as ' + user.email!),


                MaterialButton(onPressed:(){
                  FirebaseAuth.instance.signOut();
                },
                  color: Colors.indigo,
                )
              ],
            ))
    );
  }
}
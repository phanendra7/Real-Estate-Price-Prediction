import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page1/mpage.dart';
import 'package:page1/samplepages/home_page.dart';
import 'package:page1/pop1.dart';


import 'auth_page.dart';
class MainPage extends StatelessWidget{
  const MainPage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body:StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder:(context,snapshot){
              if(snapshot.hasData){
                return OBScreen1();
              }else{
                return AuthPage();
              }
            }
        )
    );
  }
}


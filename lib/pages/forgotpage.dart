import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  void dispose(){
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async{
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(context: context,
        builder:(context) {
          return AlertDialog(
            content: Text('password reset link sent! Check your email'),
          );
        },
      );

    }
    on FirebaseAuthException catch(e){
      print(e);
      showDialog(context: context,
          builder:(context){
            return AlertDialog(content: Text(e.message.toString()),);
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Housing Valley'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('Assets/icon3.png'),
            height: 200.0,
            width: 320.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Enter Your Email and you will receive a password reset link',style: TextStyle(fontSize: 20),),
          ),
          SizedBox(
            height: 20,
          ),
          ///email text field
          Padding(padding:
          const EdgeInsets.symmetric(horizontal:25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white54,
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.only(left:20.0),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail) ,
                    border: InputBorder.none,
                    hintText: 'Email',
                    labelText: "Email",

                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(onPressed:passwordReset,
            child:Text(
                'Reset Password',
              style: TextStyle(
                color: Colors.white,
              ),
            ),

            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

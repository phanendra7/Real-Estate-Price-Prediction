import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
class _RegisterPageState extends State<RegisterPage> {

  /// text controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    super.dispose();
  }
  Future signUp() async{
    if(passwordConfirmed()){
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    }
  }
  bool passwordConfirmed(){
    if(_passwordController.text.trim() == _confirmpasswordController.text.trim()){
      return true;
    }else {
      return false;
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
      body:SafeArea(
        child: Center(
          child:SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: AssetImage('Assets/icon2.png'),
                  height: 200.0,
                  width: 320.0,
                ),
                SizedBox(height: 20),
                Text(
                  "Create a new account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 15),
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
                          labelText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ///password
                Padding(padding:
                const EdgeInsets.symmetric(horizontal:25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:
                    Padding(
                      padding: EdgeInsets.only(left:20.0),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock) ,
                          border: InputBorder.none,
                          hintText: 'Password',
                          labelText: "Password",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ///confirm password
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal:25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:
                    Padding(
                      padding: EdgeInsets.only(left:20.0),
                      child: TextField(
                        controller: _confirmpasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock) ,
                          border: InputBorder.none,
                          hintText: 'Confirm Password',
                          labelText: 'Confirm Password',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ///sign Up button
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 120.0),
                  child: GestureDetector(
                    onTap:signUp ,
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:Center(
                          child: Text(
                            'SignUp',
                            style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                        )
                    ),
                  ),
                ),
                const Text(
                  "------------------ or ------------------",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 40,
                      width: 40,
                      image: AssetImage('Assets/google_icon.png'),
                    ),
                    Image(
                      height: 75,
                      width: 75,
                      image: AssetImage('Assets/facebook_icon.png'),
                    ),
                    Image(
                      height: 40,
                      width: 40,
                      image: AssetImage('Assets/instagram_icon.png'),
                    ),
                    Image(
                      height: 55,
                      width: 75,
                      image: AssetImage('Assets/apple_icon.webp'),
                    ),
                  ],
                ),
                ///not a member ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.showLoginPage,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.indigoAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}

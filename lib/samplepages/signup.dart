import 'package:flutter/material.dart';
import 'package:page1/samplepages/login.dart';

void main() => runApp(const MaterialApp(
  home: signup(),
));

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialAccentColor color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Housing Valley'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: AssetImage('Assets/icon2.png'),
                  height: 250.0,
                  width: 260.0,
                ),
                // SizedBox(height:''5 0),
                Text(
                  "Create a new account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.black
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Enter Email",
                        labelStyle: TextStyle(
                            color: Colors.blue
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.blue
                            )
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                //password
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    // obscureText: _isHidden ,
                    style: TextStyle(
                        color: Colors.black
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Colors.blue
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.blue
                            )
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                //password
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    // obscureText: _isHidden ,
                    style: TextStyle(
                        color: Colors.black
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Re-EnterPassword",
                        labelStyle: TextStyle(
                            color: Colors.blue
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.blue
                            )
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => login()
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent, //elevated button background color
                        shape: RoundedRectangleBorder( //to set border radius to button
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 10.0)
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 18.0
                      ),
                    ),
                  ),
                ),
                const Text(
                  "---------------- or ----------------",
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
                Row(
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.indigoAccent,
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => login()
                          ),
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

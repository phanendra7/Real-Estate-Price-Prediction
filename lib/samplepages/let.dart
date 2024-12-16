import 'package:flutter/material.dart';
import 'package:page1/samplepages/login.dart';
import 'package:page1/pages/login_page.dart';
import 'package:page1/samplepages/signup.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          Column(
            children: [
              const Image(
                image: AssetImage('Assets/icon2.png'),
                height: 250.0,
                width: 250.0,
              ),
              const Text(
                "Let's get you in",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.facebook_rounded),
                //icon data for elevated button
                label: const Text("Continue with Facebook"),
                //label text
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900], //elevated btton background color
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10.0)
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.g_mobiledata_rounded),
                //icon data for elevated button
                label: const Text("   Continue with Google  "),
                //label text
                style: ElevatedButton.styleFrom(
                    primary: Colors.red, //elevated btton background color
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10.0)
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.apple_rounded),
                //icon data for elevated button
                label: const Text("    Continue with apple    "),
                //label text
                style: ElevatedButton.styleFrom(
                    primary: Colors.black, //elevated button background color
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10.0)
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "---------------- or ----------------",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => LoginPage(showRegisterPage: () {  },)
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
                  'Login with Email',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  const Text(
                    "Don't have an account?",
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
                            builder: (context) => signup()
                        ),
                      );
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:page1/samplepages/login.dart';
import 'package:page1/pages/login_page.dart';
import 'package:page1/samplepages/signup.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _HomeState();
}

class _HomeState extends State<page2> {
  @override
  Widget build(BuildContext context) {
    MaterialAccentColor color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Housing Valley'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body:
      SingleChildScrollView(
        child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                width: double.infinity,
                height:200,
                constraints: BoxConstraints(maxWidth: 500.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        'Assets/hs3.jpeg',
                        width: 150.0,
                        height: 150.0,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '₹ 2.5 Cr',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '2 BHK Flat',
                              style: TextStyle( fontSize: 16),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Pacifica Hamilton Tower',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Koramangala, Bangalore',
                              style: TextStyle(fontSize: 15,color: Colors.blueGrey),

                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: 170,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Enquire Owner',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                width: double.infinity,
                height:200,
                constraints: BoxConstraints(maxWidth: 500.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        'Assets/hs6.jpeg',
                        width: 150.0,
                        height: 150.0,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '₹ 3.68 Cr',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '3 BHK Flat',
                              style: TextStyle( fontSize: 16),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Pacifica Hamilton Tower',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Koramangala, Bangalore',
                              style: TextStyle(fontSize: 15,color: Colors.blueGrey),

                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: 170,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Enquire Owner',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                width: double.infinity,
                height:200,
                constraints: BoxConstraints(maxWidth: 500.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        'Assets/hs7.jpeg',
                        width: 150.0,
                        height: 150.0,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '₹ 4.85 Cr',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '3 BHK Flat',
                              style: TextStyle( fontSize: 16),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Pacifica Hamilton Tower',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Koramangala, Bangalore',
                              style: TextStyle(fontSize: 15,color: Colors.blueGrey),

                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: 170,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Enquire Owner',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                width: double.infinity,
                height:200,
                constraints: BoxConstraints(maxWidth: 500.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        'Assets/hs8.jpeg',
                        width: 150.0,
                        height: 150.0,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '₹ 1.45 Cr',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '1 BHK Flat',
                              style: TextStyle( fontSize: 16),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Pacifica Hamilton Tower',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Koramangala, Bangalore',
                              style: TextStyle(fontSize: 15,color: Colors.blueGrey),

                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: 170,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Enquire Owner',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                width: double.infinity,
                height:200,
                constraints: BoxConstraints(maxWidth: 500.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        'Assets/hs9.jpeg',
                        width: 150.0,
                        height: 150.0,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '₹ 4.45 Cr',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '4 BHK Flat',
                              style: TextStyle( fontSize: 16),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Pacifica Hamilton Tower',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Koramangala, Bangalore',
                              style: TextStyle(fontSize: 15,color: Colors.blueGrey),

                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: 170,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Enquire Owner',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                width: double.infinity,
                height:200,
                constraints: BoxConstraints(maxWidth: 500.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        'Assets/hs4.jpeg',
                        width: 150.0,
                        height: 150.0,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '₹ 4.45 Cr',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '4 BHK Flat',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Pacifica Hamilton Tower',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Koramangala, Bangalore',
                              style: TextStyle(fontSize: 15,color: Colors.blueGrey),
                            ),

                            SizedBox(height: 10.0),
                            Container(
                              width: 170,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Enquire Owner',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                width: double.infinity,
                height:200,
                constraints: BoxConstraints(maxWidth: 500.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        'Assets/hs5.jpeg',
                        width: 150.0,
                        height: 150.0,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '₹ 4.45 Cr',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '4 BHK Flat',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Pacifica Hamilton Tower',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Koramangala, Bangalore',
                              style: TextStyle(fontSize: 15,color: Colors.blueGrey),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: 170,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Enquire Owner',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}

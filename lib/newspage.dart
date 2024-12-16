import 'package:flutter/material.dart';
import 'package:page1/mpage.dart';
import 'package:page1/predict.dart';
import 'package:page1/profile.dart';


void main() {
  runApp(news());
}

class news extends StatefulWidget {
  const news({Key? key}) : super(key: key);

  @override
  State<news> createState() => _MyAppState();
}

class _MyAppState extends State<news> {
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dark Theme Body Option',
      theme: _isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('NEWS'),
          backgroundColor: Colors.blue[900],
          actions: <Widget>[
            Switch(
              value: _isDark,
              onChanged: (value) {
                setState(() {
                  _isDark = value;
                });
              },
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[
            Container(
              child: new Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'Assets/NI1.jpeg',
                        height: 200,
                        alignment: Alignment.topLeft,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'The Nifty Realty index, which represents the listed real estate players in the market, is underperforming post the last RBI policy.',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              // decoration: new BoxDecoration(
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.blue,
              //       blurRadius: 30.0,
              //     ),
              //   ],
              // ),
            ),
            SizedBox(height: 20),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'Assets/NI2.jpeg',
                        height: 200,
                        alignment: Alignment.topLeft,
                      ),
                      Text(
                        'Knight Frank assessed the real estate markets of eight prominent cities, namely, Bengaluru, Delhi NCR, Mumbai, Hyderabad, Chennai, Kolkata, Pune and Ahmedabad. ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              // decoration: new BoxDecoration(
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.blue,
              //       blurRadius: 10.0,
              //     ),
              //   ],
              // ),
            ),
            SizedBox(height: 20),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'Assets/NI3.jpeg',
                        height: 200,
                        alignment: Alignment.topLeft,
                      ),
                      Text(
                        'According to a report by JLL India, sales of apartments in January-March across seven major cities in India',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              // decoration: new BoxDecoration(
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.blue,
              //       blurRadius: 10.0,
              //     ),
              //   ],
              // ),
            ),
            SizedBox(height: 20),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'Assets/NI4.jpeg',
                        height: 200,
                        alignment: Alignment.topLeft,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'The premium segment of apartments priced above Rs 1.5 crore had a 22% share in overall sales, reflecting rising demand for bigger',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              // decoration: new BoxDecoration(
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.blue,
              //       blurRadius: 10.0,
              //     ),
              //   ],
              // ),
            ),
          ],
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
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => profile()
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
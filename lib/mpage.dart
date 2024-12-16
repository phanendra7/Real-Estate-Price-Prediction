import 'package:flutter/material.dart';
import 'package:page1/newspage.dart';
import 'package:page1/page2.dart';
import 'package:page1/predict.dart';
import 'package:page1/profile.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: page(),
));

class page extends StatefulWidget{
  const page({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<page> {
  bool isFavorite1 = false;
  bool isFavorite2 = false;

  String selectedLocation = 'Whitefield';
  List<String> locations = ['Whitefield', 'Location 2', 'Location 3', 'Location 4'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Housing Valley'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            PreferredSize(
              preferredSize: Size.fromHeight(10.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Card(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
                children: [
                  Text(" "),
                  Icon(Icons.location_on_outlined, size: 30),
                  DropdownButton<String>(

                    value: selectedLocation,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedLocation = newValue!;
                      });
                    },

                    items: locations.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.center,
                child:Text(
                  'New Ventures',
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'Assets/hs1.png',
                        fit: BoxFit.cover,
                        height: 150,
                        width: 150,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'LA Grand Mansion',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:[
                            Text(
                              ' Indira Nagar,Banglore',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey[600],
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                isFavorite1 ? Icons.favorite : Icons.favorite_border, size: 20,
                                color: isFavorite1 ? Colors.red : null,
                              ),
                              onPressed: () {
                                setState(() {
                                  isFavorite1 = !isFavorite1;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'Assets/hs2.png',
                        fit: BoxFit.cover,
                        height: 150,
                        width: 150,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Sky Springs',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),


                      Container(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:[
                            Text(
                              '  Indira Nagar,Banglore',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey[600],
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                isFavorite2 ? Icons.favorite : Icons.favorite_border, size: 20,
                                color: isFavorite2 ? Colors.red : null,
                              ),
                              onPressed: () {
                                setState(() {
                                  isFavorite2 = !isFavorite2;
                                });
                              },
                            ),
                          ],

                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Row(
                children :[
                  Text("    Our Recommendations                ",
                      style: TextStyle(fontWeight:FontWeight.bold, fontSize:18, color: Colors.black)),


                  SizedBox(height: 70,),

                  Container(
                    child: Row(
                      children :[
                        TextButton(
                            child: Text('See all', style: TextStyle( fontSize:18, color: Colors.blue)),
                            onPressed: () {
                              print('');
                            }
                        )
                      ], // Your main content here
                    ),
                  ),

                ], // Your main content here
              ),
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children :[
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)
                      ),
                    ),
                    child: Row(
                      children :[
                        Text('   '),
                        Icon(Icons.menu, color: Colors.green,),
                        SizedBox(width: 4),
                        TextButton(
                          child: Text('All'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent), borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    ),
                    child: Row(
                      children :[
                        Icon(Icons.home, color: Colors.green,),
                        SizedBox(width: 5),
                        TextButton(
                          child: Text('House'),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => page2()
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      children :[
                        Icon(Icons.apartment, color: Colors.green,),
                        SizedBox(width: 5),
                        TextButton(
                          child: Text('Apartment'),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => page2()
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),




            SizedBox(height: 20,),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => predict()
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent, // set the background color
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15), // set the horizontal padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // set the border radius
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Predict The Prices",
                      style: TextStyle(fontSize: 22.0),
                    ),
                    Icon(Icons.currency_rupee_rounded, color: Colors.yellow, size: 30,)
                  ],
                ),
              ),
            ),


          ],
        ),
      ),

      bottomNavigationBar:
      BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home),

              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.currency_rupee_rounded),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => predict()
                  ),
                );
              },
            ),
            // IconButton(
            //   icon: Icon(Icons.favorite_border_outlined),
            //   onPressed: () {},
            // ),
            IconButton(
              icon: Icon(Icons.newspaper_outlined),
              onPressed: () {
                Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => news()
                ),
              );
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle_outlined),
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
    );
  }
}

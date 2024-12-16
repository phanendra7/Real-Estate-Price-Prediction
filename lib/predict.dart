import 'package:flutter/material.dart';
import 'package:page1/mpage.dart';
import 'package:page1/newspage.dart';
import 'package:page1/profile.dart';
import 'package:page1/samplepages/login.dart';

void main() => runApp(const MaterialApp(
  home: predict(),
));

class predict extends StatefulWidget {
  const predict({Key? key}) : super(key: key);

  @override
  State<predict> createState() => _predictState();
}

class _predictState extends State<predict> {
  String selectedLocation = 'Whitefield';
  List<String> locations = ['Whitefield', 'Location 2', 'Location 3', 'Location 4'];
  String selectedAreatype = 'Type1';
  List<String> Areatype = ['Type1', 'Type2', 'Type3', 'Type4'];
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

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 80,vertical: 6),
                  color: Colors.blueAccent,
                  child: Text(
                    "Filter your search",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 80),
                    SizedBox(
                      width: 150,
                      child: DropdownButtonFormField<String>(

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
                        decoration: InputDecoration(
                          labelText: 'Location',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Area Type",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 70),
                    SizedBox(
                      width: 150,
                      child: DropdownButtonFormField<String>(

                        value: selectedAreatype,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedAreatype = newValue!;
                          });
                        },
                        items: Areatype.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          labelText: 'Area Type',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Square feet",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 60),
                    SizedBox(
                      width: 150,
                      child: TextFormField(
                        initialValue: '0',
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Square Feet',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // --------------------------------------------------------------------------------------------
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Bathrooms",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 60),
                    SizedBox(
                      width: 150,
                      child: TextFormField(
                        initialValue: '0',
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Bathrooms',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // -------------------------------------------------------------------------
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      " BHK",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 120),
                    SizedBox(
                      width: 150,
                      child: TextFormField(
                        initialValue: '0',
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'BHK',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // ----------------------------------------------------------------
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Balcony",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 90),
                    SizedBox(
                      width: 150,
                      child: TextFormField(
                        initialValue: '0',
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Balcony',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
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
                          "Predict the prices",
                          style: TextStyle(fontSize: 22.0),
                        ),
                        Icon(Icons.currency_rupee_rounded, color: Colors.yellow, size: 30,)
                      ],
                    ),
                  ),
                ),
                Text(
                  'place ur text here',//hhedchehcjehcehkwjuh
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.white,
                ),
                ),
              ],
            ),
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
    );
  }
}

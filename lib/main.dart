import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'PlaypenSans', // Apply global font
        scaffoldBackgroundColor: Colors.white, // Set background color
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white, // AppBar background color
          iconTheme: IconThemeData(color: Color(0xFF212121)), // Icon color
          titleTextStyle: TextStyle(
            color: Color(0xFF212121),
            fontFamily: 'PlaypenSans', // Ensure the font is applied here
            fontSize: 20, // Adjust size as needed
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start, // Align elements to the start
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(color: Color(0xFF212121), borderRadius: BorderRadius.circular(99.0)),
                child: Center(
                    child: Text(
                  'B',
                  style: TextStyle(color: Color(0xFFF5F5F5), fontSize: 20),
                )),
              ),
              SizedBox(width: 10.0),
              Text(
                "Welcome,",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                " Byan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Column(
              children: [
                // First Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the Column in the Row
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF212121),
                            // boxShadow: [BoxShadow(color: Color(0xFF212121), offset: Offset(7, 7))],
                            // border: Border.all(color: Color(0xFF212121), width: 4),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Hello',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Add a space between the rows
                SizedBox(height: 16),

                // Second Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the Column in the Row
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(16.0, 0.0, 8.0, 0.0),
                        child: Container(
                          height: 416,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF212121),
                            // boxShadow: [BoxShadow(color: Color(0xFF212121), offset: Offset(7, 7))],
                            // border: Border.all(color: Color(0xFF212121), width: 4),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Second Row',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Second child
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(8.0, 0.0, 16.0, 0.0),
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF212121),
                                // boxShadow: [BoxShadow(color: Color(0xFF212121), offset: Offset(7, 7))],
                                // border: Border.all(color: Color(0xFF212121), width: 4),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Second Row',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            margin: EdgeInsets.fromLTRB(8.0, 0.0, 16.0, 0.0),
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF212121),
                                // boxShadow: [BoxShadow(color: Color(0xFF212121), offset: Offset(7, 7))],
                                // border: Border.all(color: Color(0xFF212121), width: 4),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Second Row',
                                    style: TextStyle(color: Colors.white),
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
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF212121), // Background color of the BottomNavigationBar
          selectedItemColor: Colors.white, // Color for the selected item (icon and label)
          unselectedItemColor: Colors.white, // Color for the unselected items (icon and label)
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

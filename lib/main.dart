import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quick Hire',
      theme: ThemeData(
        primaryColor: Colors.purple,
        fontFamily: 'Roboto',
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Start a timer to navigate to the HomePage after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('images/splashscreen.png'), // Change the path accordingly
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/QuickHire.png', height: 40), // Change the path accordingly
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Color(0xFFF40A5C), // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                ),
              ),
              onPressed: () {
                // Action for "Get Started Here"
              },
              child: Text(
                'Get Started Here',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white, // Change navigation color to white
        elevation: 0, // Remove shadow
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                'Quick Hire',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Find Professionals'),
              onTap: () {
                // Action for Find Professionals
              },
            ),
            ListTile(
              title: Text('Find Work'),
              onTap: () {
                // Action for Find Work
              },
            ),
            ListTile(
              title: Text('Why QuickHire'),
              onTap: () {
                // Action for Why QuickHire
              },
            ),
            ListTile(
              title: Text('Login'),
              onTap: () {
                // Action for Login
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Empower Your Career',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Join Quick Hire and access a world of opportunities. \nShowcase your skills, find projects, and grow your career.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action for "Join Now"
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white, // Change text color to white
              ),
              child: Text('Join Now'),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Anything here...',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello, Flutter!'),
            ElevatedButton(
              onPressed: () {
                // Navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MySecondScreen()),
                );
              },
              child: Text('Go to Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyThirdScreen()),
                );
              },
              child: Text('Go to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

// 👉 Creating a new stateless class
class MySecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Text('This is the second screen!'),
      ),
    );
  }
}

class MyThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Third Screen")),
      body: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

// 👉 The State Class (Manages UI updates)
class _CounterScreenState extends State<CounterScreen> {
  int counter = 0; // Variable to store counter value

  void incrementCounter() {
    setState(() {  // Updates UI when the button is pressed
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter', style: TextStyle(fontSize: 24)), 
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: incrementCounter, // Call function on button press
              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pokedex.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60.0,
                  color: Colors.amber,
                ),
              ),
              SizedBox(height: 40.0),
              Text(
                "Welcome to Pokedex! \nYou can find your favorite pokemon here",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 200.0),
              Image.asset(
                'assets/img/pokedex_logo.png',
                height: 200.0,
              ),
              SizedBox(height: 150.0),
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => LoginPage()),
                    // );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

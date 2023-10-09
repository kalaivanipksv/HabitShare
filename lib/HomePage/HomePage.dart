import 'package:HabitShare/Constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Card(
                child: Text(
                  'Habit Share',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
        persistentFooterButtons: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: primaryColor,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => signUpWidget));
            },
            child: const Text('Sign Up', style: buttonTextStyle),
          ),
          SizedBox(width: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: primaryColor,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => signInWidget));
            },
            child: Text(
              'Sign In',
              style: buttonTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
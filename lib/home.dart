import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _options = [
    'HOME', 'SEND', 'FAVORITE', 'SETTINGS', 'PROFILE'
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curved Navigation Bar',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          _options[_currentIndex],
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        animationDuration: const Duration(milliseconds: 500),
        animationCurve: Curves.easeIn,
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.white,
        color: Colors.blue,
        items: const [
          Icon(Icons.home, color: Colors.white,),
          Icon(Icons.send, color: Colors.white),
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.settings, color: Colors.white,),
          Icon(Icons.person, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      backgroundColor: Colors.white,
    );
  }
}
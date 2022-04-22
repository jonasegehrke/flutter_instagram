import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Post',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(
            backgroundColor: Colors.black,
             title: const Text(
               'instagram',
                style: TextStyle(fontFamily: 'Fontsspring', fontSize: 30),
             ),
          ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 30),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
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
            icon: Icon(Icons.add_photo_alternate),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        
      ),
    );
  }
}

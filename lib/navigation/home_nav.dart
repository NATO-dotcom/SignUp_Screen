import 'package:flutter/material.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    Center(
      child: Text(
        "Welcome Home",
        style: TextStyle(color: Colors.blueGrey, fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "Start to chat",
        style: TextStyle(color: Colors.blueGrey, fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "Create a community",
        style: TextStyle(color: Colors.blueGrey, fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "Personal Profile",
        style: TextStyle(color: Colors.blueGrey, fontSize: 40),
      ),
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
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Bonjour 😃"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white60,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
      backgroundColor: Colors.grey,
      type:BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME"),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble),label: "CHAT"),
        BottomNavigationBarItem(icon: Icon(Icons.people),label: "COMMUNITY"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "PROFILE"),
      ],
      ),
    );
  }
}

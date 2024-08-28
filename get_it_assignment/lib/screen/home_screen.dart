import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 250),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  minLines: 1,
                  maxLines: 5,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Write here',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: Text('Abu_Mukhlef'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 124, 183, 126),
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme:
            const IconThemeData(color: Color.fromARGB(255, 186, 175, 175)),
        selectedFontSize: 16,
        currentIndex: _selectedIndex,
        onTap: (index) {
          _selectedIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
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

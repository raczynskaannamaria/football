// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:football/features/auth/user_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.user});

  final User user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(180, 156, 195, 129),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => const UserProfileScreen()),
                  ),
                );
              },
              icon: const Icon(Icons.person))
        ],
      ),
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return const Center(
            child: Text('First'),
          );
        }
        if (currentIndex == 1) {
          return const Center(
            child: Text('Second'),
          );
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Jesteś zalogowany jako ${widget.user.email}'),
            ],
          ),
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer, color: Color(0xFF3d405b)),
            label: 'Reviews',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add, color: Color(0xFF3d405b)),
            label: 'Add',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0xFF3d405b)),
            label: 'My account',
          ),
        ],
        backgroundColor: const Color.fromARGB(180, 156, 195, 129),
      ),
    );
  }
}

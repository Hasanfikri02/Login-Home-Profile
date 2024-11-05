import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 16, 0, 15),
              Color.fromARGB(255, 2, 1, 106),
              Color.fromARGB(255, 0, 4, 255),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
              const SizedBox(height: 20),
              const Text(
                'WELCOME TO MY PROFILE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    ProfileInfoRow(
                      icon: Icons.person,
                      label: 'Muhammad Hasan Fikri',
                    ),
                    SizedBox(height: 10),
                    ProfileInfoRow(
                      icon: Icons.school,
                      label: 'Universitas PGRI Semarang',
                    ),
                    SizedBox(height: 10),
                    ProfileInfoRow(
                      icon: Icons.computer,
                      label: 'Program Studi Informatika',
                    ),
                    SizedBox(height: 10),
                    ProfileInfoRow(
                      icon: Icons.email,
                      label: 'hasanfikrii14843@gmail.com',
                    ),
                    SizedBox(height: 10),
                    ProfileInfoRow(
                      icon: Icons.location_on,
                      label: 'Pati, Jawa Tengah, Indonesia',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final IconData icon;
  final String label;

  const ProfileInfoRow({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black54,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}

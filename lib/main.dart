import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume Portfolio',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D5603AQEpGCXSCZ5Ijg/profile-displayphoto-shrink_400_400/0/1672243651001?e=1698278400&v=beta&t=-TZnqmlbspNaI4x5qr1pKgCtH791qeV3gGUwlXIlpXc'),
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Harish Sekar',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Mobile App Developer',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'About Me',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(textAlign: TextAlign.center,
                'Passionate mobile app developer with expertise in Flutter. I love creating user-friendly and visually appealing applications.',
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Skills',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Wrap(
                spacing: 8.0,
                children: const [
                  Chip(label: Text('Fluttery')),
                  Chip(label: Text('Dart')),
                  Chip(label: Text('UI/UX Design')),
                  // Add more skills here
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Education',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              EducationItem(
                degree: 'Bachelor of Science in Computer Science',
                university: 'University of XYZ',
                year: '2022',
              ),
              // Add more education items here
            ],
          ),
        ),
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String degree;
  final String university;
  final String year;

  EducationItem({required this.degree, required this.university, required this.year});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              degree,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(university),
            Text(year),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harish Sekar Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light, // Light mode as default
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Dark mode settings
      ),
      themeMode: ThemeMode.system, // Enable system-level light/dark mode
      home: PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Harish Sekar Portfolio')),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.deepPurpleAccent, // Adjust based on your theme
                Colors.black, // Adjust based on your theme
              ],
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [const SizedBox(height: 20),
              const CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/D5603AQEpGCXSCZ5Ijg/profile-displayphoto-shrink_400_400/0/1672243651001?e=1698278400&v=beta&t=-TZnqmlbspNaI4x5qr1pKgCtH791qeV3gGUwlXIlpXc', // Replace with your image URL
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Harish Sekar',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Education',
                style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  EducationBox(
                    institution: 'SRM Institute of Science and Technology',
                    degree: 'Bachelor of Technology, Electronics and Communication Engineering',
                    year: '2022 to 2026',
                  ),
                  const SizedBox(width: 10),
                  EducationBox(
                    institution: "Swamy's Higher Secondary School",
                    degree: 'Computer Science',
                    year: '2022',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Skills',
                style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double),
              ),
              const SizedBox(height: 10),
              SkillRow(
                skills: ['Flutter',"Python","Arduino","RaspberryPI","PCB Design", 'Dart', 'UI/UX Design', 'Firebase'],
              ),
              const SizedBox(height: 20),
              const Text(
                'Projects',
                style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  ProjectsRow(
                    projects: [
                      ProjectTile(
                        title: 'Disease detection using VGG16 Convolutional Neural Network(CNN) model',
                        description: 'Created a CNN-VGG16 model in python, that can be trained to diagnose diseases in plants and animals.',
                      ),
                      ProjectTile(
                        title: 'Flutter widgets trivia - Alexa Skill',
                        description: 'Created an Alexa skill using Python that reads out random useful flutter widgets and the method they can be used in.',
                      ),
                      ProjectTile(
                        title: 'Earthquake Alert mobile application',
                        description: 'Flutter-based Android mobile application that alerts users of any earthquake or tremors in their vicinity, using publicly available APIs',
                      ),
                      ProjectTile(
                        title: 'RFID Attendance logger',
                        description: 'Attendance logger using Arduino, RFID module and Bluetooth module.',
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Participation',
                style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double),
              ),
              const SizedBox(height: 10),
              ParticipationRow(
                events: const ['SRM Smart Campus Hackathon', 'ENDURO Online Workshop', "Workshops-AWS, Microsoft Azure, GraphQL, REST APIs"],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationBox extends StatelessWidget {
  final String institution;
  final String degree;
  final String year;

  EducationBox({required this.institution, required this.degree, required this.year});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(institution, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(degree, style:const TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
            Text(year),
          ],
        ),
      ),
    );
  }
}

class SkillRow extends StatelessWidget {
  final List<String> skills;

  SkillRow({required this.skills});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: skills.map((skill) => Chip(label: Text(skill))).toList(),
    );
  }
}

class ProjectTile extends StatelessWidget {
  final String title;
  final String description;

  ProjectTile({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      subtitle: Text(description, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
    );
  }
}

class ProjectsRow extends StatelessWidget {
  final List<ProjectTile> projects;

  ProjectsRow({required this.projects});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: projects,
    );
  }
}

class ParticipationRow extends StatelessWidget {
  final List<String> events;

  ParticipationRow({required this.events});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: events.map((event) => Chip(label: Text(event))).toList(),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume Portfolio',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var size,height,width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Portfolio'),
      ),
      body: SingleChildScrollView(
        child: Container(decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage("https://w0.peakpx.com/wallpaper/656/197/HD-wallpaper-network-connections-interlacing-dark.jpg"))),
          width: 800.0,
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GradientContainer(child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.purpleAccent, Colors.deepPurple],
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: const CircleAvatar(
                        radius: 80.0,
                        backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D5603AQEpGCXSCZ5Ijg/profile-displayphoto-shrink_400_400/0/1672243651001?e=1698278400&v=beta&t=-TZnqmlbspNaI4x5qr1pKgCtH791qeV3gGUwlXIlpXc'),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    GradientText(
                      text: 'Harish Sekar',
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Georgia',
                    ),
                    Text(
                      'Mobile App Developer',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.grey[400],
                      ),
                    ),

                  ],

                ),
              ),
              const SizedBox(height: 32.0),
              GradientContainer(
                child: Column(
                  children: [
                    SectionTitle('About Me'),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Passionate mobile app developer with expertise in Flutter. I love creating user-friendly and visually appealing applications.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32.0),
              GradientContainer(
                child: Column(
                  children: [
                    SectionTitle('Skills'),
                    const SizedBox(height: 16.0),
                    Wrap(
                      spacing: 8.0,
                      children: [
                        SkillChip('Flutter'),
                        SkillChip('Dart'),
                        SkillChip('UI/UX Design'),
                        // Add more skills here
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32.0),
              GradientContainer(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            SectionTitle('Education'),
                            const SizedBox(height: 16.0),
                            EducationItem(
                              degree: 'Bachelor of Science in Computer Science',
                              university: 'University of XYZ',
                              year: '2022',
                            ),
                            // Add more education items here
                          ],
                        ),
                        Column(
                          children: [
                            SectionTitle('Education'),
                            const SizedBox(height: 16.0),
                            EducationItem(
                              degree: 'Bachelor of Science in Computer Science',
                              university: 'University of XYZ',
                              year: '2022',
                            ),
                            // Add more education items here
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32.0),
              GradientContainer(
                child: Column(
                  children: [
                    SectionTitle('Experience'),
                    const SizedBox(height: 16.0),
                    ExperienceItem(
                      title: 'Mobile App Developer',
                      company: 'Tech Solutions Inc.',
                      year: '2022 - Present',
                    ),
                    // Add more experience items here
                  ],
                ),
              ),
              const SizedBox(height: 32.0),
              GradientContainer(
                child: Column(
                  children: [
                    SectionTitle('Projects'),
                    const SizedBox(height: 16.0),
                    ProjectItem(
                      title: 'Project 1',
                      description: 'Description of Project 1...',
                    ),
                    // Add more project items here
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

class GradientContainer extends StatelessWidget {
  final Widget child;

  GradientContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Colors.deepPurple, Colors.transparent],
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: child,
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;

  GradientText({
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: [Colors.blue[800]!, Colors.blue[300]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(bounds);
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          color: Colors.white,
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Georgia',
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;

  SkillChip(this.label);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label, style: const TextStyle(fontFamily: 'Georgia')),
      backgroundColor: Colors.blue,
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
    return Card(color: Colors.transparent,
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              degree,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              university,
              style: const TextStyle(fontSize: 20.0, fontFamily: 'Georgia'),
            ),
            Text(
              year,
              style: const TextStyle(fontSize: 20.0, fontFamily: 'Georgia'),
            ),
          ],
        ),
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String title;
  final String company;
  final String year;

  ExperienceItem({required this.title, required this.company, required this.year});

  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.transparent,
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              company,
              style: const TextStyle(fontSize: 20.0, fontFamily: 'Georgia'),
            ),
            Text(
              year,
              style: const TextStyle(fontSize: 20.0, fontFamily: 'Georgia'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String title;
  final String description;

  ProjectItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.transparent,
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: const TextStyle(fontSize: 20.0, fontFamily: 'Georgia'),
            ),
          ],
        ),
      ),
    );
  }
}

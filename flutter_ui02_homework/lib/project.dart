import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        "title": "Final Year Project for (Diploma, Software Development)",
        "date": "30 December 2023",
        "description":
            "Developed a comprehensive student internship management system for Thai-Austrian Technical College, including official document generation systems and detailed user manuals.",
        "tech": ["HTML", "CSS", "JavaScript", "PHP", "Bootstrap 5", "SQL"],
      },
      {
        "title": "Retail Shop Team Project",
        "date": "30 November 2023",
        "description":
            "Developed a fully functional web application for a retail shop simulating real-world operations with end-to-end planning, ER diagrams, DFDs, and full-stack development.",
        "tech": ["HTML", "CSS", "JavaScript", "PHP", "Bootstrap 5", "SQL"],
      },
      {
        "title":
            "Final Year Project (Vocational Certificate, Software Development)",
        "date": "30 November 2021",
        "description":
            "Developed an internship and company website for the IT and Computer Technology Department at Thai-Austrian Technical College.",
        "tech": ["HTML", "CSS", "JavaScript", "PHP", "SQL"],
      },
      {
        "title": "Pollanwser.org app",
        "date": "14 October 2023",
        "description":
            "Developed a full-stack poll web application with user authentication via JWT and CRUD operations for polls and users.",
        "tech": ["React.js", "Java Spring Boot", "Tailwind CSS", "JWT"],
      },
      {
        "title": "Flutter News App",
        "date": "29 January 2024",
        "description":
            "A news application that fetches data from an API and includes a bookmark system to save articles, demonstrating state management.",
        "tech": ["Flutter", "Dart", "REST API"],
      },
      {
        "title": "Flutter Space Shooter mobile game",
        "date": "28 January 2024",
        "description":
            "A simple 2D game built in Flutter demonstrating game development concepts and animations.",
        "tech": ["Flutter", "Dart"],
      },
      {
        "title": "Angular Online Poll App",
        "date": "28 January 2024",
        "description":
            "A functional polling/voting application demonstrating forms, event handling, state management, and backend REST API integration.",
        "tech": ["Angular", "Java Spring Boot", "Tailwind CSS", "DaisyUI"],
      },
      {
        "title": "Global Capstone Design Project 2025 (Workshop 1)",
        "date": "8 January 2025",
        "description":
            "Collaborated with international students to brainstorm and develop a concept and prototype for an AI-based Smart Bin System for trash categorization with a reward system.",
        "tech": ["Design Thinking", "AI Classification", "Sensors"],
      },
      {
        "title": "Vending Machine GUI Application",
        "date": "3 May 2025",
        "description":
            "Graphical vending machine simulator featuring dynamic image resizing, real-time basket updates, payment/change calculation, and purchase logging.",
        "tech": ["Python", "PySimpleGUI"],
      },
      {
        "title": "My Portfolio Website",
        "date": "30 May 2025",
        "description":
            "A dynamic portfolio platform with interactive animations, lightbox image gallery, dynamic content loading, admin dashboard, and JWT authentication.",
        "tech": ["React.js", "Node.js", "Express.js", "JWT", "REST API"],
      },
      {
        "title": "React Online Shopping App",
        "date": "1 June 2025",
        "description":
            "Shopping cart application practicing Redux state management for handling cart items, quantity adjustments, and dynamic total price updates.",
        "tech": ["React.js", "Redux", "JavaScript"],
      },
      {
        "title": "Global Capstone Design Project 2025 (Workshop 2)",
        "date": "4 August 2025",
        "description":
            "Built a Next.js real-time dashboard connected to MySQL displaying classified waste data from a Smart Bin system during an exchange program in South Korea.",
        "tech": ["Next.js", "MySQL", "Sensors", "AI Classification"],
      },
      {
        "title": "Air Monitor Pro (IoT Mini project)",
        "date": "14 March 2026",
        "description":
            "Smart industrial environmental guard tracking PM2.5, gas, temperature, and humidity with real-time alerting, MQTT OTA configuration, and historical analytics.",
        "tech": ["ESP32", "Next.js", "MongoDB", "MQTT", "C++"],
      },
      {
        "title": "Thaivel, a tourism website",
        "date": "7 April 2026",
        "description":
            "A travel discovery platform for Thailand featuring regional filtering, interactive cartography, dark mode, and an AI travel assistant named 'Tuktuk Driver AI'.",
        "tech": ["Next.js", "Tailwind CSS", "MySQL", "AI Integration"],
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'โปรเจก',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'ผลงานที่เกิดจากการประยุกต์ใช้ความรู้และทักษะวิชาชีพ',
              style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
            ),
            const SizedBox(height: 16),
            ...projects.map((project) {
              return Container(
                margin: const EdgeInsets.only(bottom: 14),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project['title'] as String,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      (project['date']?.toString() ?? 'Unknown date'),
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      project['description'] as String,
                      style: const TextStyle(fontSize: 14, height: 1.5),
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: (project['tech'] as List<String>)
                          .map(
                            (tech) => Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                tech,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

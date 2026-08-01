import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        "title": "B.Eng. Computer Engineering (Currently)",
        "date": "31 December 2025",
        "description":
            "Currently studying Computer Engineering at Rajamangala University of Technology Thanyaburi with GPAX 3.97.",
        "tech": ["Computer Engineering", "Software & Hardware Design"],
      },
      {
        "title": "High Voc. Cert. Computer Software Dev.",
        "date": "31 December 2023",
        "description":
            "Completed High Vocational Certificate in Computer Software Development at Thai-Austrian Technical College with GPAX 4.00.",
        "tech": ["Software Development", "Database Systems", "Web Tech"],
      },
      {
        "title": "Voc. Cert. Information Technology",
        "date": "31 December 2021",
        "description":
            "Completed Vocational Certificate in IT at Thai-Austrian Technical College with GPAX 3.92.",
        "tech": ["Information Technology", "Basic Programming"],
      },
      {
        "title": "Junior High School",
        "date": "31 December 2017",
        "description":
            "Graduated junior high school from Pattanavechsuksa School with GPAX 3.86.",
        "tech": ["General Education"],
      },
      {
        "title": "Primary School",
        "date": "31 December 2014",
        "description":
            "Graduated primary school from Pattanavechsuksa School with GPAX 3.70.",
        "tech": ["General Education"],
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'การศึกษา',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'ประวัติการศึกษาตั้งแต่อดีตถึงปัจจุบัน',
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

import 'package:flutter/material.dart';

class Internship extends StatelessWidget {
  const Internship({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        "title": "SOFTWARE DEVELOPER - TECHINVENT CO., LTD.",
        "date": "15 October 2023",
        "description":
            "4-month internship focusing on full-time software development, corporate workflows, and production features for company projects.",
        "tech": ["ReactJS", "Angular", "Flutter", "JavaScript"],
      },
      {
        "title": "ASIA STEEL TRANSPORT (1999) CO., LTD.",
        "date": "16 September 2021",
        "description":
            "Gained hands-on experience developing websites, analyzing data, performing web application testing, and generating analytical reports.",
        "tech": ["WordPress", "MS Excel", "Web Testing", "Data Analysis"],
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'การฝึกงาน',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'ประสบการณ์การฝึกงานในองค์กร',
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

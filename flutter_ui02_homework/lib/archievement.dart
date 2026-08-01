import 'package:flutter/material.dart';

class Archievement extends StatelessWidget {
  const Archievement({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'title': 'Smart Home App',
        'type': 'Mobile App',
        'description':
            'A modern Flutter app for controlling lights, temperature, and security devices from one place.',
        'tech': ['Flutter', 'Firebase', 'Provider'],
      },
      {
        'title': 'UI/UX Redesign',
        'type': 'Design System',
        'description':
            'A refreshed dashboard experience with elegant cards, clear hierarchy, and improved usability.',
        'tech': ['Figma', 'Flutter', 'Material 3'],
      },
      {
        'title': 'IoT Monitoring Dashboard',
        'type': 'Web App',
        'description':
            'An analytics dashboard for tracking device status, sensor values, and alerts in real time.',
        'tech': ['Dart', 'REST API', 'Charts'],
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'ความสำเร็จ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'ประสบการ์ความภาคภูมิใจจากการประกวด แข่งขันทักษะต่างๆ',
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
                      project['type'] as String,
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

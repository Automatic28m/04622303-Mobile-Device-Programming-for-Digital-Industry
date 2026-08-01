import 'package:flutter/material.dart';

class Archievement extends StatelessWidget {
  const Archievement({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        "title":
            "Third Runner-up in the National Skills Competition for Network Technology, 31st Edition",
        "date": "3 February 2023",
        "description":
            "Collaborated on a website development project, contributing to the frontend and backend while partner focused on network infrastructure.",
        "tech": ["HTML", "PHP", "CSS", "SQL", "Networking"],
      },
      {
        "title":
            "Won 1st place in Regional Skills Competition for Network Technology",
        "date": "31 October 2022",
        "description":
            "Won 1st place at the Eastern Region and Bangkok level skills competition in website development and network infrastructure.",
        "tech": ["HTML", "PHP", "CSS", "SQL"],
      },
      {
        "title": "First Runner-up Award in English Public Speaking Contest",
        "date": "22 December 2020",
        "description":
            "Achieved 1st Runner-up at the Vocational Education Level in Chonburi Province.",
        "tech": ["Public Speaking", "English Communication"],
      },
      {
        "title": "Winner of the English Public Speaking Contest (School Level)",
        "date": "8 December 2020",
        "description":
            "Awarded 1st place at Sattahip / Thai-Austrian Technical College level.",
        "tech": ["Public Speaking", "English Communication"],
      },
      {
        "title": "1st Runner-Up of the English Demonstration Contest",
        "date": "14 December 2021",
        "description":
            "Achieved 1st Runner-up at Vocational Education Level in Chonburi Province.",
        "tech": ["English Presentation", "Demonstration"],
      },
      {
        "title": "Scored 690 out of 990 on TOEIC",
        "date": "17 September 2023",
        "description":
            "Achieved a total score of 690 on the Test of English for International Communication.",
        "tech": ["English Proficiency"],
      },
      {
        "title": "Awarded First Place in TikTok Video Competition",
        "date": "28 October 2022",
        "description":
            "Won 1st place in video creation under the 'No Smoking, Less Risk, Say No to Drugs' project.",
        "tech": ["Video Editing", "Content Creation"],
      },
      {
        "title":
            "Awarded Second Place in English Public Speaking ('Start-up in the New Normal')",
        "date": "25 October 2022",
        "description":
            "Earned 2nd place speaking on modern startup strategies during COVID era.",
        "tech": ["Public Speaking", "English Communication"],
      },
      {
        "title": "Bronze Award in Young Inventors Contest",
        "date": "22 March 2021",
        "description":
            "Received Consolation/Bronze prize at the regional level and served as the English presenter for the team's invention.",
        "tech": ["English Presentation", "Innovation"],
      },
      {
        "title": "Winner of RMUTT Engineering Freshy Boy 2024",
        "date": "26 July 2027",
        "description":
            "Awarded 1st place recognizing leadership, personality, public speaking, and active participation in engineering activities.",
        "tech": ["Leadership", "Public Speaking"],
      },
      {
        "title": "1st Runner-up, RMUTT Freshy Boy 2024",
        "date": "16 August 2024",
        "description":
            "Achieved first runner-up across all faculties at Rajamangala University of Technology Thanyaburi.",
        "tech": ["Interpersonal Skills", "Leadership"],
      },
      {
        "title": "Academic Excellence Scholarship (GPA 4.00)",
        "date": "23 June 2025",
        "description":
            "Awarded academic excellence scholarship for achieving a perfect 4.00 GPA in Semester 2, Academic Year 2024.",
        "tech": ["Academic Achievement"],
      },
      {
        "title": "Naval Training Command Foundation Day Scholarship",
        "date": "19 June 2025",
        "description":
            "Received academic scholarship in commemoration of Naval Training Command Foundation Day, Royal Thai Fleet.",
        "tech": ["Academic Achievement"],
      },
      {
        "title": "ICPC 2025 Competition Representative",
        "date": "9 September 2025",
        "description":
            "Represented university in ICPC, translating complex English problem statements into Thai in real-time for team algorithmic efficiency.",
        "tech": ["Algorithms", "Problem Solving", "Translation"],
      },
      {
        "title": "TESA TOP GUN 2025 - Top Score Awards",
        "date": "8 November 2025",
        "description":
            "Developed a real-time drone detection and tracking system; awarded 'Top Score on Presentation' and 'Top Score on Battle Fields Integration'.",
        "tech": [
          "Object Detection",
          "Real-time Tracking",
          "Dashboard",
          "Defense Tech",
        ],
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

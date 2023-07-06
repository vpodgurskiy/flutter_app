import 'package:flutter/cupertino.dart';
import 'package:flutter_app/models/project_info.dart';
import 'package:flutter_app/models/skill_box.dart';

class ProjectsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ProjectInfo(
            date: "2022 - present",
            title: "SUEK",
            position: "Senior Software Engineer / Tech Lead",
            description: "Deliver high-quality, robust production code "
                "for a diverse array of projects for clients including "
                "Harvard Business School, Everytown for Gun Safety, "
                "Pratt Institute, Koala Health, Vanderbilt University, "
                "The 19th News, and more. Provide leadership within "
                "engineering department through close collaboration, "
                "knowledge shares, and mentorship.",
            skills: [
              SkillBox(name : "Java"),
              SkillBox(name : "Spring Boot"),
              SkillBox(name : "Postgres"),
              SkillBox(name : "Java"),
              SkillBox(name : "Spring Boot"),
              SkillBox(name : "Postgres"),
              SkillBox(name : "Java"),
              SkillBox(name : "Spring Boot"),
              SkillBox(name : "Postgres"),
            ],
          ),
          ProjectInfo(
            date: "JULY 2022 - DEC 2023",
            title: "EPAM",
            position: "Senior Software Engineer / Tech Lead",
            description: "--",
            skills: [
              SkillBox(name : "Java"),
              SkillBox(name : "Spring Boot"),
              SkillBox(name : "Postgres"),
              SkillBox(name : "Java"),
              SkillBox(name : "Spring Boot"),
              SkillBox(name : "Postgres"),
              SkillBox(name : "Java")
            ],
          ),
        ],
      ),
    );
  }
}

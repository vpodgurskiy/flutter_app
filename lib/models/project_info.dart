import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/responsiveProject.dart';

import '../constants.dart';
import '../responsive.dart';

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({
    Key? key,
    required this.date,
    required this.title,
    required this.position,
    required this.description,
    required this.skills,

  }) : super(key: key);

  final String date, title, position, description;
  final List<Widget> skills;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
        child: Row(
          children: [
            Expanded(child: PrInfoDate(date: date)),
            Expanded(
                child: PrInfoDescription(
                    title: title,
                    position: position,
                    description: description,
                    skills: skills
                ),
            )
         ],
       ),
    );
  }
}

Row buildDesktopView(date, title, position, description, skills) {
  return Row(
    children: [
      Expanded(
        flex: 4,
        child: PrInfoDate(date: date),
      ),
      Expanded(
          flex: 1,
          child: SizedBox(width: 10)
      ),
      Expanded(
        flex: 4,
        child: PrInfoDescription(
               title: title,
               position: position,
               description: description,
               skills: skills
           ),
      ),
    ],
  );
}

Column buildMobileView(date, title, position, description, skills) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: PrInfoDate(date: date),
          ),
        ],
      ),
      SizedBox(height: defaultPadding),
      Row(
        children: [
          Expanded(
            child: PrInfoDescription(
                title: title,
                position: position,
                description: description,
                skills: skills
            ),
          ),
        ],
      )
    ],
  );
}

class PrInfoDate extends StatelessWidget {
  const PrInfoDate({
    Key? key,
    required this.date,

  }) : super(key: key);

  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Text(date)
    );
  }
}

class PrInfoDescription extends StatelessWidget {
  const PrInfoDescription({
    Key? key,
    required this.title,
    required this.position,
    required this.description,
    required this.skills,

  }) : super(key: key);

  final String title, position, description;
  final List<Widget> skills;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        child: Column(
            children: [
              Text(title),
              Text(position),
              Text(description),
              PrInfoSkills(skills: skills)
            ]
        )
    );
  }
}

class PrInfoSkills extends StatelessWidget {
  const PrInfoSkills({
    Key? key,
    required this.skills,

  }) : super(key: key);

  final List<Widget> skills;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        child: Row(
            children: skills
        )
    );
  }
}

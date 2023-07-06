import 'package:flutter/cupertino.dart';

import '../constants.dart';

class SkillBox extends StatelessWidget {
  const SkillBox({
    Key? key,
    required this.name,

  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
      decoration: BoxDecoration(
        color: Color.fromRGBO(19, 78, 74, 0.5),
        // border: Border.all(width: 2, color: mainColor),
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
        // shape:
      ),
      child: Text(
          name,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: mainColor
        )
      )
    );
  }
}

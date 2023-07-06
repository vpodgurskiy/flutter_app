import 'package:flutter/cupertino.dart';
import 'package:flutter_app/models/utils.dart';

import '../constants.dart';

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Education",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(226, 232, 240, 1),
            )
          ),
          dividerLine,
          Text(
              "Master of Electronic Engineering :",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
              )
          ),
          Text(
              "University of Information Technologies,\n"
                  "Mechanics, and Optics – 2010",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(226, 232, 240, 1),
              )
          ),
          Text(
              "Saint-Petersburg,\n"
              "Russia",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              )
          ),
        ],
      ),
    );
  }
}

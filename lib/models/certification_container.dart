import 'package:flutter/cupertino.dart';
import 'package:flutter_app/models/utils.dart';

import '../constants.dart';

class Certification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Certifications",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(226, 232, 240, 1),
              )
          ),
          dividerLine,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Jul 2019 – ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  )
              ),
              Text(
                  "Oracle Certified Associate,\n"
                  "Java SE 8 Programmer",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(226, 232, 240, 1),
                  )
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Jul 2020 – ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  )
              ),
              Text(
                  "Oracle Certified Professional,\n"
                  "Java SE 8 Programmer",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(226, 232, 240, 1),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}

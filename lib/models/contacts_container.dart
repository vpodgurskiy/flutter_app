import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/models/utils.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              defaultPaddingBox,
              buildSvgPicture("gitHub.svg"),
              buildSvgPicture("linkedIn.svg"),
              defaultPaddingBox,
            ],
          ),
          Row(
            children: [
              Text(
                  "email:   ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200
                  )
              ),
              Text(
                  "vpodgurskiy@gmail.com",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(226, 232, 240, 1),
                  )
              )
            ]
          ),
          defaultPaddingBox,
          Row(
            children: [
              Text(
                  "telegram:   ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200
                  )
              ),
              Text(
                  "@vpodgurskiy",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(226, 232, 240, 1)
                  )
              ),
            ]
          ),
        ],
      ),
    );
  }
}

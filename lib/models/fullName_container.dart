import 'package:flutter/cupertino.dart';

import '../constants.dart';

class FullNameContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FullName(),
          Position(),
          Container(
            height: defaultPadding
          ),
          AboutMe(),
        ],
      )
    );
  }
}

class FullName extends FullNameContainer {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Vadim Podgurskiy",
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(226, 232, 240, 1),
      ),
    );
  }
}

class Position extends FullNameContainer {
  @override
  Widget build(BuildContext context) {
    return Text(
        "Senior Software Engineer / Tech lead",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(226, 232, 240, 1),
      )
    );
  }
}

class AboutMe extends FullNameContainer {
  @override
  Widget build(BuildContext context) {
    return Text(
        "I build accessible, inclusive products "
            "and digital experiences for the web.",
        style: TextStyle(
          fontSize: 15,
          // fontWeight: FontWeight.w500,
          // color: Color.fromRGBO(226, 232, 240, 1),
        )
    );
  }
}



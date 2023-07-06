import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class OverviewContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Text("Senior software engineer / "
          "Tech lead with more than 12 years in IT. "
          "Last 5 year working with Java. "
          "Experienced with all development cycle for web projects. "
          "Well-versed in spring framework and databases. "
          "Have Java OCA & OCP certificates. "
          "Strong background in Agile methodology and team management."
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

import '../constants.dart';
import 'certification_container.dart';
import 'contacts_container.dart';
import 'education_container.dart';
import 'fullName_container.dart';

class LeftColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FullNameContainer(),
          Padding(padding: EdgeInsets.all(defaultPadding)),
          Contacts(),
          Education(),
          Certification(),
        ],
      ),
    );
  }
}

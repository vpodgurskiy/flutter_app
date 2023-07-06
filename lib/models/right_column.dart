import 'package:flutter/cupertino.dart';
import 'package:flutter_app/models/projects_container.dart';

import '../constants.dart';
import 'overview_container.dart';

class RightColumn extends StatelessWidget {
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
          OverviewContainer(),
          ProjectsContainer(),
        ],
      ),
    );
  }
}

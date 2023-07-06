import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

Container buildSvgPicture(String fileName) {
  return Container(
      padding: EdgeInsets.all(5),
      child: SvgPicture.asset(
          path + fileName,
          height: 30,
          width: 30,
      )
  );
}

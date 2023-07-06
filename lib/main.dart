import 'package:flutter/material.dart';
import 'package:flutter_app/responsive.dart';
import '../../constants.dart';
import 'models/left_column.dart';
import 'models/right_column.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vadim Podgurskiy',
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts
            .poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: textColor),
      ),
      home: Scaffold(
        backgroundColor: bgColorMain,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(200, 100, 200, 150),
            child: Responsive(
              desktop: buildDesktopView(),
              mobile: buildMobileView(),
            ),
          )
        )
      )
    );
  }

  Row buildDesktopView() {
    return Row(
              children: [
                Expanded(
                  flex: 4,
                  child: LeftColumn(),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(width: 10)
                ),
                Expanded(
                  flex: 4,
                  child: RightColumn(),
                ),
              ],
            );
  }

  Column buildMobileView() {
    return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: LeftColumn(),
                    ),
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Expanded(
                      child: RightColumn(),
                    ),
                  ],
                )
              ],
            );
  }
}




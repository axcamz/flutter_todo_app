import 'package:flutter/material.dart';
import 'package:flutter_todolist_app/constant/colors_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBorderbutton extends StatelessWidget {
  final String title;
  TextBorderbutton({Key key, this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            shadowColor: Colors.black26,
            elevation: 3,
            side: BorderSide(color: mCrime, width: 2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            enableFeedback: true,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8)),
        onPressed: () {},
        child: Text(
          title,
          style: GoogleFonts.lato(
              fontWeight: FontWeight.bold, fontSize: 16, color: mCrime),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_todolist_app/constant/colors_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mRed,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            floating: false,
            snap: false,
            pinned: false,
            expandedHeight: 210,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              background: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SafeArea(
                      child: Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: Text(
                        "12 March",
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: mCrime)),
                      ),
                    ),
                  )),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Steve 👋",
                          style: GoogleFonts.lato(
                              fontSize: 32,
                              color: mCrime,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "There are 5 tasks that have not been completed",
                          style: GoogleFonts.lato(fontSize: 14, color: mCrime),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 150),
              padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(46),
                  ),
                  color: mCrime),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      decoration: BoxDecoration(
                          color: mBlue,
                          borderRadius: BorderRadius.circular(10)),
                      child: CheckboxListTile(
                        value: _value,
                        onChanged: (bool value) {
                          setState(() {
                            _value = value;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Container(
                          child: Text(
                            "Membuat Aplikasi Todolist menggunakan Flutter",
                            style: GoogleFonts.lato(
                                color: mBlueTitle,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: _value
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

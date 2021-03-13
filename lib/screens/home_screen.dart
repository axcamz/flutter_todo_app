import 'package:flutter/material.dart';
import 'package:flutter_todolist_app/constant/colors_constant.dart';
import 'package:flutter_todolist_app/widgets/list_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  ListTodo(
                    value: false,
                    title: "Membuat Aplikasi TodoList dengan Menggunakan Flutter",
                  ),
                  ListTodo(
                    value: true,
                    title: "Membuat Aplikasi dengan Menggunakan Flutter",
                  ),
                  ListTodo(
                    value: true,
                    title: "Membut Apliskasi dengan Meggunakan Flutter",
                  ),
                  ListTodo(
                    value: true,
                    title: "Membuat Aplikasi dengan Menggunakan Flutter",
                  ),
                  ListTodo(
                    value: false,
                    title: "Membuat Aplikasi dengan Menggunakan Flutter",
                  ),
                  ListTodo(
                    value: true,
                    title: "Membuat Aplikasi dengan Menggunakan Flutter",
                  ),ListTodo(
                    value: true,
                    title: "Membuat Aplikasi dengan Menggunakan Flutter",
                  ),ListTodo(
                    value: true,
                    title: "Membuat Aplikasi dengan Menggunakan Flutter",
                  ),ListTodo(
                    value: true,
                    title: "Membuat Aplikasi dengan Menggunakan Flutter",
                  ),ListTodo(
                    value: true,
                    title: "Membuat Aplikasi dengan Menggunakan Flutter",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_todolist_app/constant/colors_constant.dart';
import 'package:flutter_todolist_app/models/todo_model.dart';
import 'package:flutter_todolist_app/widgets/list_widget.dart';
import 'package:flutter_todolist_app/widgets/textborderbutton_widget.dart';
import 'package:flutter_todolist_app/widgets/textfillbutton_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _titleValue;

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
                padding: EdgeInsets.fromLTRB(20, 40, 20, 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(46),
                    ),
                    color: mCrime),
                child: Column(
                    children: lists
                        .map((e) =>
                            new ListTodo(title: e.title, status: e.status))
                        .toList())),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: mRed, borderRadius: BorderRadius.circular(15)),
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(12),
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          padding:
                              EdgeInsets.only(top: 20, left: 10, right: 10),
                          constraints: BoxConstraints(minHeight: 60),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: mCrime,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 4),
                                  blurRadius: 5)
                            ],
                          ),
                          child: TextFormField(
                            textCapitalization: TextCapitalization.words,
                            style: GoogleFonts.lato(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            // autofocus: true,
                            initialValue: _titleValue,
                            onChanged: (String value) {
                              setState(() {
                                _titleValue = value;
                              });
                            },
                            maxLength: 150,
                            maxLines: null,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 0),
                                hintStyle: TextStyle(color: Colors.black26),
                                hintText: "Add Todo"),
                            validator: (String value) {
                              if (value == null || value.isEmpty) {
                                return "Isi Dengan Benar";
                              }
                              return null;
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextBorderbutton(
                              title: "Batal",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextFillbutton(
                              title: "Simpan",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              });
        },
        backgroundColor: mRed,
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_todolist_app/constant/colors_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTodo extends StatefulWidget {
  final bool status;
  final String title;

  ListTodo({this.status, this.title});

  @override
  _ListTodoState createState() => _ListTodoState();
}

class _ListTodoState extends State<ListTodo> {
  bool _status;

  @override
  void initState() {
    super.initState();
    this._status = widget.status;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        decoration: BoxDecoration(
            color: mBlue,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, offset: Offset(0, 1), blurRadius: 6)
            ]),
        child: CheckboxListTile(
          activeColor: mBlueTitle,
          value: _status,
          onChanged: (bool value) {
            setState(() {
              _status = value;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            widget.title,
            style: GoogleFonts.lato(
                color: mBlueTitle,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                decoration:
                    _status ? TextDecoration.lineThrough : TextDecoration.none),
          ),
        ));
  }
}

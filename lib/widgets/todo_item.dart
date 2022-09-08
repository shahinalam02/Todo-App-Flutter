import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(Icons.radio_button_checked,
            color: Color(0xFF4361ee), size: 30),
        title: Text("Morning Tea",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.lineThrough),
            )),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.do_not_disturb_on_outlined,
          ),
          color: Color(0xFF4361ee),
          iconSize: 30,
        ),
      ),
    );
  }
}

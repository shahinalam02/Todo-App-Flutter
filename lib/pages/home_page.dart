import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/widgets/search_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEFF5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            Image.network(
              "https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png",
              width: 50,
            ),
            const SizedBox(width: 50),
            const Text("Shahin Alam"),
            const SizedBox(width: 100),
            const Icon(Icons.menu, size: 35.0),
          ],
        ),
      ),
      body: Column(
        children: [
          SearchBox(),
          ListView(
            children: [
              Container(
                child: Text(
                  "All ToDo list",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w300, fontSize: 35),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

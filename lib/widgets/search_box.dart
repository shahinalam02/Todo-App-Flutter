import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.only(top: 20.0),
      height: 50,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: TextField(
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: "Search here",
          hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
      ),
    );
  }
}

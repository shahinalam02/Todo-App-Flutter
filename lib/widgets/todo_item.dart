import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  const TodoItem(
      {super.key,
      required this.todo,
      required this.onToDoChanged,
      required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: todo.isDone
            ? const Icon(Icons.radio_button_checked,
                color: Color(0xFF4361ee), size: 30)
            : const Icon(Icons.radio_button_unchecked,
                color: Color(0xFF4361ee), size: 30),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
          child: Text(
            todo.todoText!,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 17,
                color: Colors.black,
                decoration: todo.isDone ? TextDecoration.lineThrough : null,
              ),
            ),
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            onDeleteItem(todo.id);
          },
          icon: const Icon(
            Icons.do_not_disturb_on_outlined,
          ),
          color: const Color(0xFF4361ee),
          iconSize: 30,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notestest/views/edit_note_view.dart';
import 'package:notestest/views/notes_view.dart';

void main() {
  runApp(const NotesAppTest());
}

class NotesAppTest extends StatelessWidget {
  const NotesAppTest({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        EditNoteView.id: (context) => EditNoteView(),
        NotesView.id: (context) => NotesView()
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppin',
      ),
      debugShowCheckedModeBanner: false,
      home: NotesView(),
    );
  }
}

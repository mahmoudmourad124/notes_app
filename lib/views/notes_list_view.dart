import 'package:flutter/material.dart';
import 'package:notes_app/views/custome_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(
            top: 8.0,
          ),
          child: NoteItem(),
        );
      },
    );
  }
}

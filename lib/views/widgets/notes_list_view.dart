import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_note_item.dart';
import 'package:notes_app/views/widgets/edit_note_view.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            top: 8.0,
          ),
          child: GestureDetector(
            child: NoteItem(),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const EditNoteView();
                },
              ));
            },
          ),
        );
      },
    );
  }
}

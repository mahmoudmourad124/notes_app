import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(0)),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            );
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}

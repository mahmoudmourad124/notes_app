import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_appbar.dart';
import 'package:notes_app/views/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppbar(),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: NotesListView(),
          )),
        ],
      ),
    );
  }
}

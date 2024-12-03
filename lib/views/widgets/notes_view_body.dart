import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppbar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: NotesListView(),
          )),
        ],
      ),
    );
  }
}

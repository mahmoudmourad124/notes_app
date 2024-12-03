import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomAppbar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          CustomTextField(textFieldHint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            textFieldHint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}

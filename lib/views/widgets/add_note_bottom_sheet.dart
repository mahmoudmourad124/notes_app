import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Scrollable(viewportBuilder: (context, position) {
        return const SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                textFieldHint: 'Title',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                maxLines: 5,
                textFieldHint: 'Content',
              ),
              SizedBox(
                height: 15,
              ),
              CustomButton(buttonTitle: 'Save')
            ],
          ),
        );
      }),
    );
  }
}

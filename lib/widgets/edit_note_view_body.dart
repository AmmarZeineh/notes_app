import 'package:flutter/material.dart';
import 'package:notestest/widgets/custom_app_bar.dart';
import 'package:notestest/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            iconData: Icons.check,
          ),
          SizedBox(
            height: 40,
          ),
          CustomTextFeild(
              maxLines: 2,
              hint: 'Title'),
          SizedBox(
            height: 20,
          ),
          CustomTextFeild(
              maxLines: 5,
              hint: 'Content')
        ],
      ),
    );
  }
}

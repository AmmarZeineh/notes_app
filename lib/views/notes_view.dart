import 'package:flutter/material.dart';
import 'package:notestest/constant.dart';
import 'package:notestest/widgets/custom_text_feild.dart';
import 'package:notestest/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const CustomButtomSheet();
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}

class CustomButtomSheet extends StatelessWidget {
  const CustomButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        CustomTextFeild(
            contentPadding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
            hint: 'Title'),
        SizedBox(
          height: 20,
        ),
        CustomTextFeild(
            contentPadding: EdgeInsets.symmetric(vertical: 100, horizontal: 12),
            hint: 'Content')
      ],
    );
  }
}

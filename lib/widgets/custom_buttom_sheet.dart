import 'package:flutter/material.dart';
import 'package:notestest/widgets/custom_button.dart';
import 'package:notestest/widgets/custom_text_feild.dart';

class CustomButtomSheet extends StatelessWidget {
  const CustomButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomTextFeild(
              maxLines: 2 ,
                
                hint: 'Title'),
            SizedBox(
              height: 20,
            ),
            CustomTextFeild(
              maxLines: 5,
                hint: 'Content'),
            SizedBox(
              height: 50,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

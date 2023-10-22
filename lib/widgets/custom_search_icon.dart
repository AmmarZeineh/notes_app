import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.search,
        size: 35,
        shadows: [],
      ),
    );
  }
}

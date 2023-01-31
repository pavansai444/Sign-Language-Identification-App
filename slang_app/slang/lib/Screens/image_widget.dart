import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final int index;

  const ImageWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    height: 200,
    width: double.infinity,
    child: Card(
      child: Image.asset(
        'assets/Newimages/$index.png',
        fit: BoxFit.cover,
      ),
    ),
  );
}
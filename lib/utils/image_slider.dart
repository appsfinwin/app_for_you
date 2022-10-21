import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: ClipRect(
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Container(
                color: Colors.grey,
              ),
            ),
          ),
        )
      ],
    );
  }
}

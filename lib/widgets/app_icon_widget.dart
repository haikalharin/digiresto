import 'package:flutter/material.dart';

class AppIconWidget extends StatelessWidget {
  final image;
  final percent;

  const AppIconWidget({Key key, this.image, this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //getting screen size
    var size = MediaQuery.of(context).size;

    //calculating container width
    double imageSize;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      imageSize = (size.width * percent);
    } else {
      imageSize = (size.height * percent);
    }

    return Image.asset(
      image,
      height: imageSize,
    );
  }
}

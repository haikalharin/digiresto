import 'package:flutter/material.dart';
import 'package:digiresto/domain/core/theme.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({
    Key? key,
    required this.count,
    required this.builder,
    required this.aspectRatio,
    this.spacing = defaultMargin * 2,
    this.onChange,
    this.controller,
  }) : super(key: key);

  final int count;
  final double spacing;
  final PageController? controller;

  final Widget Function(BuildContext context, int index) builder;

  final double aspectRatio;
  final Function(int)? onChange;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: ListView.builder(
          controller: controller,
          physics: const PageScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: count,
          itemBuilder: (context, index) {
            final Widget item = builder(context, index);

            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: spacing),
                child: item,
              ),
            );
          }),
    );
  }
}

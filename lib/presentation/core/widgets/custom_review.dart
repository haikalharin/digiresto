import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';

class CustomRating extends StatefulWidget {
  final int currentRating;
  final int maximumRating;
  final Function(int) onRatingSelected;
  final bool isEnable;
  final double size;

  CustomRating({
    required this.currentRating,
    required this.onRatingSelected,
    this.isEnable = true,
    this.maximumRating = 5,
    this.size = 12,
  });

  @override
  _CustomRating createState() => _CustomRating();
}

class _CustomRating extends State<CustomRating> {
  int _currentRating = 0;

  Widget _buildRatingStar(int index) {
    if (index < _currentRating) {
      return Icon(
        Icons.star,
        color: AppColors.yellowStar,
        size: widget.size,
      );
    } else {
      return Icon(
        Icons.star,
        color: AppColors.greyCOC0C0,
        size: widget.size,
      );
    }
  }

  Widget _buildBody() {
    final stars = List<Widget>.generate(this.widget.maximumRating, (index) {
      return GestureDetector(
        child: _buildRatingStar(index),
        onTap: () {
          if (widget.isEnable) {
            setState(() {
              _currentRating = index + 1;
            });
          }
          this.widget.onRatingSelected(_currentRating);
        },
      );
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: stars,
        ),
        // FlatButton(
        //   child: Text("Clear", style: TextStyle(color: Colors.blue)),
        //   onPressed: () {
        //     setState(() {
        //       _currentRating = 0;
        //     });
        //     this.widget.onRatingSelected(_currentRating);
        //   },
        // )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    _currentRating = widget.currentRating;
    return _buildBody();
  }
}

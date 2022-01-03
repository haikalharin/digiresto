import 'package:digiresto/domain/profile/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RatingController extends GetxController {
  RxInt rating = 0.obs;
  RxString review = ''.obs;

  TextEditingController reviewCtrl = TextEditingController();

  void changeRating(int value) {
    rating.value = value;
  }

  void changeReview(String value) {
    review.value = value;
  }

  bool allValid() {
    final _rating = Rating(rating.value.toString());
    final _review = Review(review.value);

    final isRatingValid = _rating.isValid();
    final isReviewValid = _review.isValid();

    return isRatingValid && isReviewValid;
  }

  @override
  void onReady() {
    // called after the widget is rendered on screen
    reviewCtrl.addListener(() {
      changeReview(reviewCtrl.text);
    });
    super.onReady();
  }
}

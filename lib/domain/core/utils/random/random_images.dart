import 'dart:math';

import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:flutter/material.dart';

/*get random images from local asset
This feature is used when no image is available on API*/
class RandomImages {
  static AssetImage getImage() {
    Random random = new Random();
    int randomNumber = random.nextInt(9);
    return AssetImage(AppAssets.food + randomNumber.toString() + ".png");
  }

  static dynamic getImageUrl(String? img) {
    if (img == null || img == "") {
      return getImage();
    } else {
      if (img.contains('http') || img.contains('https')) {
        return NetworkImage(img);
      } else {
        return NetworkImage("http://" + img);
      }
    }
  }

  static ImageProvider getImageUrlDefault(String? img, String? defaultImg) {
    if (img == null || img == "") {
      if (defaultImg == null || defaultImg == "") {
        return getImage();
      } else {
        return AssetImage(AppAssets.food + defaultImg.toString() + ".png");
      }
    } else {
      if (img.contains('http') || img.contains('https')) {
        return NetworkImage(img);
      } else {
        return NetworkImage("http://" + img);
      }
    }
  }
}

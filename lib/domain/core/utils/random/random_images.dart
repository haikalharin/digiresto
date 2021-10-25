import 'dart:math';

import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image/flutter_image.dart';

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
        return NetworkImageWithRetry(img);
      } else {
        return NetworkImageWithRetry("http://" + img);
      }
    }
  }

  static ImageProvider getImageUrlDefault(String? img, String? defaultImg) {
    if (img == null || img == "") {
      if (defaultImg == null || defaultImg == "") {
        print('case 1');
        return getImage();
      } else {
        print('case 2');
        return AssetImage(AppAssets.food + defaultImg.toString() + ".png");
      }
    } else {
      if (img.contains('http') || img.contains('https')) {
        print('case 3');
        return NetworkImageWithRetry(img);
      } else {
        print('case 4');
        return NetworkImageWithRetry("http://" + img);
      }
    }
  }
}

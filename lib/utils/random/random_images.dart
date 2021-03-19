import 'package:flutter/material.dart';
import 'dart:math';
import 'package:boilerplate/constants/assets.dart';
/*get random images from local asset
This feature is used when no image is available on API*/
class RandomImages{
  static AssetImage getImage(){
    Random random = new Random();
    int randomNumber = random.nextInt(9);
    return AssetImage(Assets.food+randomNumber.toString()+".png");
  }
}
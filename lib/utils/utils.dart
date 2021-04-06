import 'package:flutter/material.dart';
import 'dart:math';
import 'package:boilerplate/constants/assets.dart';
import 'package:intl/intl.dart';
class Utils{

  static String formatRupiah(String balance){
    if (balance.length > 1) {
      final formatter = new NumberFormat("#,###", "ID");
      var tmpBalance = double.parse(balance).toString();
      var intBalance = int.parse(
          tmpBalance.substring(0, tmpBalance.length - 2));
      return formatter.format(intBalance).toString();
    }else{
      return balance;
    }
  }

}
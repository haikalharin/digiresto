import 'dart:math';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

mixin CommonUtils {
  static const String defaultCountryCallingCode = '+62';

  static final RegExp _emailRegExp = RegExp(
    r'^([A-Z|a-z|0-9](\.|_){0,1})+[A-Z|a-z|0-9]\@([A-Z|a-z|0-9])+((\.){0,1}[A-Z|a-z|0-9]){2}\.[a-z]{2,3}$',
  );

  static final RegExp _passwordRegExp = RegExp(
    r'^((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,64})$',
  );

  static final RegExp _phoneRegExp = RegExp(r'^(?:[+0])?[0-9]{8,15}$');

  static String? dateFormat(String pattern, DateTime? date) {
    final DateFormat format = DateFormat(
      pattern,
    );
    String? sDate;
    if (date != null) sDate = format.format(date);
    return sDate;
  }

  static Either<bool, bool> containsValue(
      Map<String, dynamic> map, String comparedTo) {
    bool isContains = false;
    map.forEach((key, value) {
      if (!isContains) {
        isContains =
            value.toString().toLowerCase().contains(comparedTo.toLowerCase());
      }
    });
    return isContains ? right(true) : left(false);
  }

  static String currencyFormat(double amount) {
    final NumberFormat format = NumberFormat("#,##0.00", "id_ID");
    return 'Rp. ${format.format(amount)}';
  }

  static bool validateEmail(String value) {
    return _emailRegExp.hasMatch(value);
  }

  static bool validatePassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }

  static bool validatePhone(String phone) {
    return _phoneRegExp.hasMatch(phone);
  }

  static String replaceSpace(String value) {
    return value.replaceAll(' ', '%20');
  }

  static Either<String, String> getInitials(String value) {
    if (value.isNotEmpty) {
      return right(value
          .trim()
          .split(' ')
          .map((e) => e[0])
          .take(2)
          .join()
          .toUpperCase());
    }
    return left('');
  }

  static String getUUID() {
    const uuid = Uuid();
    return uuid.v1();
  }

  static DateTime firstDateOfWeek(DateTime current) {
    switch (current.weekday) {
      case DateTime.tuesday:
        return current.subtract(const Duration(days: 1));
      case DateTime.wednesday:
        return current.subtract(const Duration(days: 2));
      case DateTime.thursday:
        return current.subtract(const Duration(days: 3));
      case DateTime.friday:
        return current.subtract(const Duration(days: 4));
      case DateTime.saturday:
        return current.subtract(const Duration(days: 5));
      case DateTime.sunday:
        return current.subtract(const Duration(days: 6));
      default:
        return current;
    }
  }

  static DateTime lastDateOfWeek(DateTime current) {
    switch (current.weekday) {
      case DateTime.saturday:
        return current.add(const Duration(days: 1));
      case DateTime.friday:
        return current.add(const Duration(days: 2));
      case DateTime.thursday:
        return current.add(const Duration(days: 3));
      case DateTime.wednesday:
        return current.add(const Duration(days: 4));
      case DateTime.tuesday:
        return current.add(const Duration(days: 5));
      case DateTime.monday:
        return current.add(const Duration(days: 6));
      default:
        return current;
    }
  }

  static Future<bool> checkInternetConnection(Connectivity connectivity) async {
    final result = await connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }

  static String getRandomString(int length) {
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final Random _rnd = Random();
    return String.fromCharCodes(Iterable.generate(
        length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  }
}

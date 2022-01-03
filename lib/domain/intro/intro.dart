import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'intro.freezed.dart';

@freezed
class Intro with _$Intro {
  const factory Intro({
    required Widget image,
    required String title,
    required String description,
  }) = _Intro;
}

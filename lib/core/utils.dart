import 'dart:io';

import 'package:flutter/material.dart';

/// Get the current locale using the [Platform.localeName].
Locale get platformLocale {
  final localeName = Platform.localeName;
  final languageCode = localeName.split('_').first;
  final countryCode = localeName.split('_').last;

  return Locale(languageCode, countryCode);
}

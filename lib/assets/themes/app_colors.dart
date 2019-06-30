import 'dart:core';

import 'package:flutter/material.dart';

class AppColors {
  static const Map<String, Color> _sigiColors = <String, Color>{
    COLOR_MAIN: Color(0xFF4487C1),
    COLOR_MAIN_10: Color(0x104487C1),
    COLOR_MAIN_20: Color(0x204487C1),
    COLOR_MAIN_50: Color(0x504487C1),
    COLOR_MAIN_SHADOW_30: Color(0x3074D3FF),
    COLOR_BACKGROUND_BLUE: Color(0xf5F1F6FA),
    COLOR_MAIN_DARK: Color(0xFF4D7FAA),
    COLOR_MENU: Color(0xF04487C1),
    COLOR_BLUE_TEXT: Color(0xFF3071a8),
    COLOR_WHITE: Color(0xFFFFFFFF),
    COLOR_WHITE_20: Color(0x20FFFFFF),
    COLOR_WHITE_90: Color(0x90FFFFFF),
    COLOR_YELLOW: Color(0xFFf8e71b),
    COLOR_ORANGE: Color(0xFFF18D4A),
    COLOR_ORANGE_DARK: Color(0xFFFF7005),
    COLOR_RED: Color(0xFFfe575f),
    COLOR_PINK: Color(0xFFfff6f6),
    COLOR_PINK_DARK: Color(0xFFfae9ea),
    COLOR_RED_DARK: Color(0xFFCB2831),
    COLOR_BACKGROUND: Color(0xFFf4f8fc),
    COLOR_BACKGROUND_USER_DETAILS: Color(0xFFf0f5fa),
    COLOR_BACKGROUND_CARD_USER_DETAILS: Color(0xFFf2f7fb),
    COLOR_LIGHT_GRAY: Color(0xFFE2E3E4),
    COLOR_MEDIUM_LIGHT_GRAY: Color(0xFF94999e),
    COLOR_LIGHT_GRAY_20: Color(0xFF4e4e4e),
    COLOR_LIGHT_BLUE: Color(0xFFe3eaf1),
    COLOR_LIGHT_BLUE_47: Color(0x47f1f4f8),
    COLOR_DIRTY_WHITE: Color(0xFFFCFDFE),
    COLOR_GRAY: Color(0xFFBEC5CB),
    COLOR_TEXT_BLUE_LIGHT: Color(0xFFbac7d2),
    COLOR_TEXT_GRAY: Color(0xFF2b2a2b),
    COLOR_TEXT_GRAY_DARK: Color(0xFF404950),
    COLOR_TEXT_GRAY_MID: Color(0xFFe6e9ec),
    COLOR_TEXT_SEMI_GRAY: Color(0xFF4a4a4a),
    COLOR_TEXT_BLACK: Color(0xFF000000),
    COLOR_TEXT_GRAY_HINT: Color(0xFF797879),
    COLOR_TEXT_GRAY_HINT_LIGHT: Color(0x50797879),
    COLOR_TEXT_GRAY_HINT_OPACITY: Color(0xE0e0e4e8),
    COLOR_TEXT_GRAY_LINE: Color(0xFFe2e6ea),
    COLOR_GRAY_MIDDLE_LIGHT: Color(0xFF83888D),
    COLOR_GRAY_MIDDLE: Color(0xFFb7c1c9),
    COLOR_GRAY_SOFT_TEXT: Color(0xFF585858),
    COLOR_GRAY_USER_DETAILS_TEXT: Color(0xFF5b6976),
    COLOR_GRAY_MIDDLE_OPACITY: Color(0x30b7c1c9),
    COLOR_GRAY_MIDDLE_OPACITY_50: Color(0x50b7c1c9),
    COLOR_GRAY_MIDDLE_OPACITY_60: Color(0x604a4a4a),
    COLOR_GRAY_MIDDLE_REPORT: Color(0xFF66727d),
    COLOR_RED_BATTERY: Color(0xFFfe575f),
    COLOR_RED_LOGOUT: Color(0xF0fe575f),
    COLOR_ORANGE_BATTERY: Color(0xFFFF7005),
    COLOR_GREEN_BATTERY: Color(0xFF50c11e),
    COLOR_GREEN_DIALOG: Color(0xFF13c43f),
    COLOR_SHADOW: Color.fromRGBO(161, 190, 213, 0.29),
    COLOR_GRAY_LIGHT_OPACITY_16: Color.fromRGBO(121, 120, 121, 0.16),
  };

  static Color getColor(String key) {
    return _sigiColors[key];
  }
}

const String COLOR_MAIN = 'COLOR_MAIN';
const String COLOR_MAIN_10 = 'COLOR_MAIN_10';
const String COLOR_MAIN_50 = 'COLOR_MAIN_50';
const String COLOR_MAIN_DARK = 'COLOR_MAIN_DARK';
const String COLOR_MENU = 'COLOR_MENU';
const String COLOR_YELLOW = 'COLOR_YELLOW';
const String COLOR_ORANGE = 'COLOR_ORANGE';
const String COLOR_ORANGE_DARK = 'COLOR_ORANGE_DARK';
const String COLOR_WHITE = 'COLOR_WHITE';
const String COLOR_WHITE_20 = 'COLOR_WHITE_20';
const String COLOR_WHITE_90 = 'COLOR_WHITE_90';
const String COLOR_RED = 'COLOR_RED';
const String COLOR_RED_DARK = 'COLOR_RED_DARK';
const String COLOR_GRAY = 'COLOR_GRAY';
const String COLOR_LIGHT_GRAY = 'COLOR_LIGHT_GRAY';
const String COLOR_LIGHT_GRAY_20 = 'COLOR_LIGHT_GRAY_20';
const String COLOR_GRAY_LIGHT_OPACITY_16 = 'COLOR_GRAY_LIGHT_OPACITY_16';
const String COLOR_LIGHT_BLUE = 'COLOR_LIGHT_BLUE';
const String COLOR_LIGHT_BLUE_47 = 'COLOR_LIGHT_BLUE_47';
const String COLOR_DIRTY_WHITE = 'COLOR_DIRTY_WHITE';
const String COLOR_BACKGROUND = 'COLOR_BACKGROUND';
const String COLOR_TEXT_SEMI_GRAY = 'COLOR_TEXT_SEMI_GRAY';
const String COLOR_TEXT_GRAY = 'COLOR_TEXT_GRAY';
const String COLOR_TEXT_BLACK = 'COLOR_TEXT_BLACK';
const String COLOR_TEXT_GRAY_HINT = 'COLOR_TEXT_GRAY_HINT';
const String COLOR_TEXT_GRAY_HINT_OPACITY = 'COLOR_TEXT_GRAY_HINT_OPACITY';
const String COLOR_GRAY_MIDDLE_LIGHT = 'COLOR_GRAY_MIDDLE_LIGHT';
const String COLOR_GRAY_MIDDLE = 'COLOR_GRAY_MIDDLE';
const String COLOR_GRAY_MIDDLE_OPACITY = 'COLOR_GRAY_MIDDLE_OPACITY';
const String COLOR_GRAY_MIDDLE_OPACITY_50 = 'COLOR_GRAY_MIDDLE_OPACITY_50';
const String COLOR_GRAY_MIDDLE_OPACITY_60 = 'COLOR_GRAY_MIDDLE_OPACITY_60';
const String COLOR_PINK = 'COLOR_PINK';
const String COLOR_PINK_DARK = 'COLOR_PINK_DARK';
const String COLOR_RED_BATTERY = 'COLOR_RED_BATTERY';
const String COLOR_ORANGE_BATTERY = 'COLOR_ORANGE_BATTERY';
const String COLOR_GREEN_BATTERY = 'COLOR_GREEN_BATTERY';
const String COLOR_GREEN_DIALOG = 'COLOR_GREEN_DIALOG';
const String COLOR_MAIN_20 = 'COLOR_MAIN_20';
const String COLOR_MAIN_SHADOW_30 = 'COLOR_MAIN_SHADOW_40';
const String COLOR_BLUE_TEXT = 'COLOR_BLUE_TEXT';
const String COLOR_TEXT_GRAY_MID = 'COLOR_TEXT_GRAY_MID';
const String COLOR_BACKGROUND_BLUE = 'COLOR_BACKGROUND_BLUE';
const String COLOR_RED_LOGOUT = 'COLOR_RED_LOGOUT';
const String COLOR_SHADOW = 'COLOR_SHADOW';
const String COLOR_TEXT_GRAY_HINT_LIGHT = 'COLOR_TEXT_GRAY_HINT_LIGHT';
const String COLOR_GRAY_SOFT_TEXT = 'COLOR_GRAY_SOFT_TEXT';
const String COLOR_GRAY_MIDDLE_REPORT = 'COLOR_GRAY_MIDDLE_REPORT';
const String COLOR_TEXT_GRAY_LINE = 'COLOR_TEXT_GRAY_LINE';
const String COLOR_BACKGROUND_USER_DETAILS = 'COLOR_BACKGROUND_USER_DETAILS';
const String COLOR_BACKGROUND_CARD_USER_DETAILS = 'COLOR_BACKGROUND_CARD_USER_DETAILS';
const String COLOR_GRAY_USER_DETAILS_TEXT = 'COLOR_GRAY_USER_DETAILS_TEXT';
const String COLOR_TEXT_BLUE_LIGHT = 'COLOR_TEXT_BLUE_LIGHT';
const String COLOR_TEXT_GRAY_DARK = 'COLOR_TEXT_GRAY_DARK';
const String COLOR_MEDIUM_LIGHT_GRAY = 'COLOR_MEDIUM_LIGHT_GRAY';


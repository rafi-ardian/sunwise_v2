import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';
import 'package:sunwise_v2/core/theme/app_colors.dart';

class Helpers {
  /// Memeriksa apakah email valid
  static bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  /// Memformat tanggal ke format 'dd MMM yyyy'
  static String formatDate(DateTime date) {
    return DateFormat('dd MMM yyyy').format(date);
  }

  /// Mengonversi string ke integer dengan fallback
  static int parseInt(String value, {int fallback = 0}) {
    try {
      return int.parse(value);
    } catch (e) {
      return fallback;
    }
  }

  // Kondisi gambar matahari/bulan
  static String uvIndexToImagePath(String uvIndex) {
    try {
      int index = int.parse(uvIndex);
      if (index >= 0 && index <= 2) {
        return 'assets/images/fluent-emoji_full-moon.png';
      } else if (index >= 3 && index <= 6) {
        return 'assets/images/sunemoji.png';
      } else {
        return 'assets/images/sunemoji.png';
      }
    } catch (e) {
      return 'assets/images/sunemoji.png';
    }
  }

  // Kondisi warna teks
  static Color uvIndexToTextColor(String uvIndex) {
    try {
      int index = int.parse(uvIndex);
      if (index >= 7 && index <= 9) {
        return AppColors.greenColor;
      } else {
        return AppColors.whiteColor;
      }
    } catch (e) {
      return AppColors.whiteColor;
    }
  }

  // Kondisi opacity container dalam Uv Index
  static double uvIndexToInsideContainer(String uvIndex) {
    try {
      int index = int.parse(uvIndex);
      if (index >= 7) {
        return 0.24;
      } else {
        return 0.1;
      }
    } catch (e) {
      return 1;
    }
  }

  // Kondisi background
  static LinearGradient uvIndexToColor(String uvIndex) {
    try {
      int index = int.parse(uvIndex);
      if (index >= 0 && index <= 2) {
        return const LinearGradient(
          colors: [
            AppColors.purpleGradientColorTop,
            AppColors.purpleGradientColorBottom,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0,
            0.6,
          ],
        );
      } else if (index >= 3 && index <= 6) {
        return const LinearGradient(
          colors: [
            AppColors.greenGradientColorTop,
            AppColors.greenGradientColorBottom,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0,
            0.52,
          ],
        );
      } else if (index >= 7 && index <= 9) {
        return const LinearGradient(
          colors: [
            AppColors.yellowGradientColorBottom,
            AppColors.yellowGradientColorTop,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.37,
            0.78,
          ],
        );
      } else if (index >= 10 && index <= 12) {
        return const LinearGradient(
          colors: [
            AppColors.redGradientColorTop,
            AppColors.redGradientColorBottom,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0,
            0.56,
          ],
        );
      } else {
        return const LinearGradient(
          colors: [
            AppColors.purpleGradientColorTop,
            AppColors.purpleGradientColorBottom,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0,
            0.6,
          ],
        );
      }
    } catch (e) {
      return const LinearGradient(
        colors: [
          AppColors.purpleGradientColorTop,
          AppColors.purpleGradientColorBottom,
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        stops: [
          0,
          0.6,
        ],
      );
    }
  }
}

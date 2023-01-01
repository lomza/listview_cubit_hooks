import 'package:flutter/cupertino.dart';
import 'package:listview_cubit_hooks/core/ui/app_colors.dart';

class AppTypography {
  static TextStyle h220Bold = const TextStyle(
    fontSize: 20,
    color: AppColors.titleColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle h318Bold = const TextStyle(
    fontSize: 18,
    color: AppColors.titleColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle h516medium = const TextStyle(
    fontSize: 16,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle h714Medium = const TextStyle(
    fontSize: 14,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle body14regular = const TextStyle(
    fontSize: 14,
    color: AppColors.textColor,
    fontWeight: FontWeight.w400,
  );
}

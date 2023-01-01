import 'package:flutter/material.dart';
import 'package:listview_cubit_hooks/core/ui/app_colors.dart';
import 'package:listview_cubit_hooks/core/ui/app_typography.dart';

class AppTextEdit extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final String? errorText;
  final TextInputType? textInputType;
  final ValueChanged<String>? onChanged;
  final TextEditingController? textEditingController;
  final int lines;
  final FormFieldValidator<String>? validator;

  const AppTextEdit({
    required this.labelText,
    Key? key,
    this.textEditingController,
    this.hintText,
    this.errorText,
    this.textInputType,
    this.onChanged,
    this.lines = 1,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const InputBorder border = OutlineInputBorder(borderSide: BorderSide());

    return TextFormField(
      controller: textEditingController,
      onChanged: onChanged,
      validator: validator,
      minLines: lines,
      maxLines: lines,
      style: AppTypography.h516medium,
      keyboardType: textInputType ?? TextInputType.text,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelText: labelText,
        labelStyle: AppTypography.body14regular,
        enabledBorder: border,
        border: border,
        focusedErrorBorder: border.copyWith(borderSide: const BorderSide(color: Colors.red)),
        focusedBorder: border.copyWith(borderSide: BorderSide(color: (AppColors.textColor).withOpacity(0.5))),
        hintText: hintText,
        errorBorder: border.copyWith(borderSide: const BorderSide(color: Colors.red)),
        errorText: errorText,
        hintStyle: AppTypography.body14regular,
      ),
    );
  }
}

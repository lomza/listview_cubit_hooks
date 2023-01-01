import 'package:flutter/material.dart';
import 'package:listview_cubit_hooks/core/ui/app_colors.dart';
import 'package:listview_cubit_hooks/core/ui/app_dimensions.dart';
import 'package:listview_cubit_hooks/core/ui/app_typography.dart';

class BooksListItem extends StatelessWidget {
  final String title;
  final String author;
  final bool isRead;
  final ValueChanged bookReadChanged;
  final VoidCallback onItemTap;

  const BooksListItem({
    Key? key,
    required this.title,
    required this.author,
    required this.isRead,
    required this.bookReadChanged,
    required this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onItemTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppDimensions.m,
          horizontal: AppDimensions.l,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.h318Bold,
                  ),
                  const SizedBox(height: AppDimensions.s),
                  Text(
                    author,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.body14regular,
                  ),
                ],
              ),
            ),
            Switch(
              value: isRead,
              onChanged: bookReadChanged,
              activeColor: AppColors.actionColor,
            ),
          ],
        ),
      ),
    );
  }
}

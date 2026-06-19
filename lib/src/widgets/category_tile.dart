import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String title;

  final IconData? icon;

  final bool isSelected;

  final int? badge;

  final VoidCallback onTap;

  final Color selectedColor;

  final Color unselectedColor;

  final Gradient? selectedGradient;

  const CategoryTile({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    required this.selectedColor,
    required this.unselectedColor,
    this.icon,
    this.badge,
    this.selectedGradient,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),

        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),

        decoration: BoxDecoration(
          color: selectedGradient == null
              ? (isSelected ? selectedColor : unselectedColor)
              : null,

          gradient: isSelected ? selectedGradient : null,

          borderRadius: BorderRadius.circular(25),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,

          children: [
            if (icon != null) ...[
              Icon(icon, size: 18, color: Colors.white),

              const SizedBox(width: 6),
            ],

            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),

            if (badge != null) ...[
              const SizedBox(width: 8),

              Container(
                padding: const EdgeInsets.all(4),

                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),

                child: Text(
                  badge.toString(),

                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoryItem {
  final String title;

  final IconData? icon;

  final int? badge;

  const CategoryItem({
    required this.title,
    this.icon,
    this.badge,
  });
}
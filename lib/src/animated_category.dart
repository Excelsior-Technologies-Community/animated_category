import 'package:flutter/material.dart';
import 'package:flutter_animated_category/src/enums/category_type.dart';
import 'package:flutter_animated_category/src/model/category_items.dart';
import 'controller/category_controller.dart';
import 'widgets/category_tile.dart';

class AnimatedCategoryView extends StatefulWidget {
  final List<CategoryItem> categories;

  final CategoryController? controller;

  final ValueChanged<int>? onChanged;

  final Color? selectedColor;

  final Color? unselectedColor;

  final Gradient? selectedGradient;

  final AnimationType animationType;

  final Duration animationDuration;

  const AnimatedCategoryView({
    super.key,
    required this.categories,
    this.controller,
    this.onChanged,
    this.selectedColor,
    this.unselectedColor,
    this.selectedGradient,
    this.animationType = AnimationType.scale,
    this.animationDuration = const Duration(milliseconds: 300),
  });

  @override
  State<AnimatedCategoryView> createState() => _AnimatedCategoryViewState();
}

class _AnimatedCategoryViewState extends State<AnimatedCategoryView> {
  late CategoryController controller;

  @override
  void initState() {
    super.initState();

    controller = widget.controller ?? CategoryController();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: widget.categories.length,

        itemBuilder: (context, index) {
          final item = widget.categories[index];

          final isSelected = controller.selectedIndex == index;

          return AnimatedScale(
            scale: _scaleValue(isSelected),

            duration: widget.animationDuration,

            child: CategoryTile(
              title: item.title,

              icon: item.icon,

              badge: item.badge,

              isSelected: isSelected,

              selectedColor:
                  widget.selectedColor ?? Theme.of(context).primaryColor,

              unselectedColor:
                  widget.unselectedColor ?? Theme.of(context).disabledColor,

              selectedGradient: widget.selectedGradient,

              onTap: () {
                controller.select(index);

                widget.onChanged?.call(index);
              },
            ),
          );
        },
      ),
    );
  }

  double _scaleValue(bool selected) {
    switch (widget.animationType) {
      case AnimationType.scale:
        return selected ? 1.1 : 1.0;

      case AnimationType.bounce:
        return selected ? 1.15 : 1.0;

      case AnimationType.none:
        return 1.0;
    }
  }
}

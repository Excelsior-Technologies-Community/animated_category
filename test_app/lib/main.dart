import 'package:flutter/material.dart';
import 'package:flutter_animated_category/flutter_animated_category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Animated Category')),

        body: Padding(
          padding: const EdgeInsets.all(16),

          child: AnimatedCategoryView(
            categories: const [
              CategoryItem(title: 'All', icon: Icons.apps, badge: 12),

              CategoryItem(title: 'Food', icon: Icons.restaurant, badge: 5),

              CategoryItem(title: 'Drinks', icon: Icons.local_drink, badge: 2),

              CategoryItem(title: 'Dessert', icon: Icons.cake),
            ],

            animationType: AnimationType.scale,

            selectedGradient: const LinearGradient(
              colors: [Colors.blue, Colors.purple],
            ),

            onChanged: (index) {
              debugPrint('Selected: $index');
            },
          ),
        ),
      ),
    );
  }
}

# Flutter Animated Category

A lightweight and customizable animated category selector for Flutter.

Create beautiful horizontal category menus with icons, badges, gradients, animations, and controller support.

---

## Features

✅ Horizontal Category List

✅ Category Selection

✅ Icons Support

✅ Badge Count Support

✅ Gradient Selection Background

✅ Custom Selected & Unselected Colors

✅ Scale Animation

✅ Bounce Animation

✅ Controller Support

✅ onChanged Callback

✅ Lightweight & Easy to Use

---

## Installation

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_animated_category: 
    path: ../
```

Run:

```bash
flutter pub get
```

---

## Import

```dart
import 'package:flutter_animated_category/flutter_animated_category.dart';
```

---

## Basic Usage

```dart
AnimatedCategoryView(
  categories: const [
    CategoryItem(
      title: 'All',
      icon: Icons.apps,
    ),
    CategoryItem(
      title: 'Food',
      icon: Icons.restaurant,
    ),
    CategoryItem(
      title: 'Drinks',
      icon: Icons.local_drink,
    ),
  ],

  onChanged: (index) {
    debugPrint('Selected: $index');
  },
)
```

---

## Categories With Badges

```dart
AnimatedCategoryView(
  categories: const [
    CategoryItem(
      title: 'All',
      icon: Icons.apps,
      badge: 12,
    ),

    CategoryItem(
      title: 'Food',
      icon: Icons.restaurant,
      badge: 5,
    ),

    CategoryItem(
      title: 'Drinks',
      icon: Icons.local_drink,
      badge: 2,
    ),
  ],
)
```

---

## Gradient Selection

```dart
AnimatedCategoryView(
  categories: categories,

  selectedGradient: const LinearGradient(
    colors: [
      Colors.blue,
      Colors.purple,
    ],
  ),
)
```

---

## Animation Types

### Scale Animation

```dart
AnimatedCategoryView(
  categories: categories,
  animationType: AnimationType.scale,
)
```

### Bounce Animation

```dart
AnimatedCategoryView(
  categories: categories,
  animationType: AnimationType.bounce,
)
```

### No Animation

```dart
AnimatedCategoryView(
  categories: categories,
  animationType: AnimationType.none,
)
```

---

## Controller Support

Create a controller:

```dart
final controller = CategoryController();
```

Use it:

```dart
AnimatedCategoryView(
  controller: controller,
  categories: categories,
)
```

Change category programmatically:

```dart
controller.select(2);
```

---

## Custom Colors

```dart
AnimatedCategoryView(
  categories: categories,

  selectedColor: Colors.blue,

  unselectedColor: Colors.grey.shade300,
)
```

---

## Full Example

```dart
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
        appBar: AppBar(
          title: const Text(
            'Animated Category',
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(16),

          child: AnimatedCategoryView(
            categories: const [
              CategoryItem(
                title: 'All',
                icon: Icons.apps,
                badge: 12,
              ),

              CategoryItem(
                title: 'Food',
                icon: Icons.restaurant,
                badge: 5,
              ),

              CategoryItem(
                title: 'Drinks',
                icon: Icons.local_drink,
                badge: 2,
              ),

              CategoryItem(
                title: 'Dessert',
                icon: Icons.cake,
              ),
            ],

            animationType:
                AnimationType.scale,

            selectedGradient:
                const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.purple,
                  ],
                ),

            onChanged: (index) {
              debugPrint(
                'Selected: $index',
              );
            },
          ),
        ),
      ),
    );
  }
}
```

---

## Available Animation Types

| AnimationType | Description              |
| ------------- | ------------------------ |
| none          | No animation             |
| scale         | Scale selected category  |
| bounce        | Bounce selected category |

---

### AnimatedCategoryView

| Property          | Type                | Description                  |
| ----------------- | ------------------- | ---------------------------- |
| categories        | List<CategoryItem>  | Category items               |
| controller        | CategoryController? | Category controller          |
| onChanged         | ValueChanged<int>?  | Selection callback           |
| selectedColor     | Color?              | Selected background color    |
| unselectedColor   | Color?              | Unselected background color  |
| selectedGradient  | Gradient?           | Selected gradient background |
| animationType     | AnimationType       | Animation style              |
| animationDuration | Duration            | Animation duration           |

---


## License

MIT License
 
Copyright (c) 2026 Excelsior Technologies
 
Permission is hereby granted, free of charge, to any person obtaining a copy

of this software and associated documentation files (the "Software"), to deal

in the Software without restriction, including without limitation the rights

to use, copy, modify, merge, publish, distribute, sublicense, and/or sell

copies of the Software, and to permit persons to whom the Software is

furnished to do so, subject to the following conditions:
 
The above copyright notice and this permission notice shall be included in all

copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR

IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,

FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE

AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER

LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,

OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE

SOFTWARE.
 

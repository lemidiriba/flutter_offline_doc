// Flutter code sample for FontFeature.caseSensitiveForms
//
// The Piazzolla font supports the `case` feature. It causes
// parentheses, brackets, braces, guillemets, slashes, bullets, and
// some other glyphs (not shown below) to be shifted up slightly so
// that capital letters appear centered in comparison. When the
// feature is disabled, those glyphs are optimized for use with
// lowercase letters, and so capital letters appear to ride higher
// relative to the punctuation marks.
//
// The difference is very subtle. It may be most obvious when
// examining the square brackets compared to the capital A.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_case.png)

import 'dart:ui';

import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      title: 'Flutter Code Sample',
      builder: (BuildContext context, Widget? navigator) =>
          const MyStatelessWidget(),
      color: const Color(0xffffffff),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The Piazzolla font can be downloaded from Google Fonts (https://www.google.com/fonts).
    return const Text(
      '(A) [A] {A} «A» A/B A•B',
      style: TextStyle(
        fontFamily: 'Piazzolla',
        fontFeatures: <FontFeature>[
          FontFeature.caseSensitiveForms(),
        ],
      ),
    );
  }
}

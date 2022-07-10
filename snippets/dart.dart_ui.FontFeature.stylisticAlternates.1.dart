// Flutter code sample for FontFeature.stylisticAlternates
//
// The Source Code Pro font supports the `salt` feature. It causes
// some glyphs to be rendered differently, for example the "a" and
// "g" glyphs change from their typographically common
// double-storey forms to simpler single-storey forms, the dollar
// sign's line changes from discontinuous to continuous (and is
// angled), and the "0" rendering changes from a center dot to a
// slash.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_salt.png)

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
    // The Source Code Pro font can be downloaded from Google Fonts (https://www.google.com/fonts).
    return const Text(
      r'Agile Game - $100 initial bet',
      style: TextStyle(
        fontFamily: 'Source Code Pro',
        fontFeatures: <FontFeature>[
          FontFeature.stylisticAlternates(),
        ],
      ),
    );
  }
}

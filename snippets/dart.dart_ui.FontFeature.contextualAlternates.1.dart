// Flutter code sample for FontFeature.contextualAlternates
//
// The Barriecito font supports the `calt` feature. It causes some
// letters in close proximity to other instances of themselves to
// use different glyphs, to give the appearance of more variation
// in the glyphs, rather than having each letter always use a
// particular glyph.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_calt.png)

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
    // The Barriecito font can be downloaded from Google Fonts (https://www.google.com/fonts).
    return const Text(
      "Ooohh, we weren't going to tell him that.",
      style: TextStyle(
        fontFamily: 'Barriecito',
        fontFeatures: <FontFeature>[
          FontFeature.contextualAlternates(),
        ],
      ),
    );
  }
}

// Flutter code sample for FontFeature.ordinalForms
//
// The Piazzolla font supports the `ordn` feature. It causes
// alphabetic glyphs to become smaller and superscripted.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_ordn.png)

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
      '1st, 2nd, 3rd, 4th...',
      style: TextStyle(
        fontFamily: 'Piazzolla',
        fontFeatures: <FontFeature>[
          FontFeature.ordinalForms(),
        ],
      ),
    );
  }
}

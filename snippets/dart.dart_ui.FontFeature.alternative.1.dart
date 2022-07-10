// Flutter code sample for FontFeature.alternative
//
// The Raleway font supports several alternate glyphs. The code
// below shows how specific glyphs can be selected. With `aalt` set
// to zero, the default, the normal glyphs are used. With a
// non-zero value, Raleway substitutes small caps for lower case
// letters. With value 2, the lowercase "a" changes to a stemless
// "a", whereas the lowercase "t" changes to a vertical bar instead
// of having a curve. By targeting specific letters in the text
// (using [Text.rich]), the desired rendering for each glyph can be
// achieved.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_aalt.png)

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
    // The Raleway font can be downloaded from Google Fonts (https://www.google.com/fonts).
    return const Text(
      'The infamous Tuna Torture.',
      style: TextStyle(
        fontFamily: 'Raleway',
        fontFeatures: <FontFeature>[
          FontFeature.alternative(1), // or 2, or 3, or...
        ],
      ),
    );
  }
}

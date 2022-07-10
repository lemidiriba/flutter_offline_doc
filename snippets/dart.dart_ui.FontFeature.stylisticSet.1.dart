// Flutter code sample for FontFeature.stylisticSet
//
// The Source Code Pro font supports the `ssXX` feature for several
// sets. In the example below, stylistic sets 2 (`ss02`), 3
// (`ss03`), and 4 (`ss04`) are selected. Stylistic set 2 changes
// the rendering of the "a" character and the beta character,
// stylistic set 3 changes the lowercase "g", theta, and delta
// characters, and stylistic set 4 changes the lowercase "i" and
// "l" characters.
//
// This font also supports character variants (see
// [FontFeature.characterVariant]).
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_ssXX_1.png)

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
    return Text(
      'aáâ β gǵĝ θб Iiíî Ll',
      style: TextStyle(
        fontFamily: 'Source Code Pro',
        fontFeatures: <FontFeature>[
          FontFeature.stylisticSet(2),
          FontFeature.stylisticSet(3),
          FontFeature.stylisticSet(4),
        ],
      ),
    );
  }
}

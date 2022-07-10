// Flutter code sample for FontFeature.characterVariant
//
// The Source Code Pro font supports the `cvXX` feature for several
// characters. In the example below, variants 1 (`cv01`), 2
// (`cv02`), and 4 (`cv04`) are selected. Variant 1 changes the
// rendering of the "a" character, variant 2 changes the lowercase
// "g" character, and variant 4 changes the lowercase "i" and "l"
// characters. There are also variants (not shown here) that
// control the rendering of various greek characters such as beta
// and theta.
//
// Notably, this can be contrasted with the stylistic sets, where
// the set which affects the "a" character also affects beta, and
// the set which affects the "g" character also affects theta and
// delta.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_cvXX.png)

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
          FontFeature.characterVariant(1),
          FontFeature.characterVariant(2),
          FontFeature.characterVariant(4),
        ],
      ),
    );
  }
}

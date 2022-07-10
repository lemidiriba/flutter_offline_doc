// Flutter code sample for FontFeature.historicalLigatures
//
// The Cardo font supports the `hlig` feature. It has legacy
// ligatures for "VI" and "NT", and various ligatures involving the
// "long s". In the example below, both historical forms (`hist 1`)
// and historical ligatures (`hlig 1`) are enabled, so, for
// instance, "fish" becomes "fiſh" which is then rendered using a
// ligature for the last two characters.
//
// Similarly, the word "business" is turned into "buſineſſ" by
// `hist`, and the `ſi` and `ſſ` pairs are ligated by `hlig`.
// Observe in particular the position of the dot of the "i" in
// "business" in the various combinations of these features.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_historical.png)

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
    // The Cardo font can be downloaded from Google Fonts (https://www.google.com/fonts).
    return const Text(
      'VIBRANT fish assisted his business.',
      style: TextStyle(
        fontFamily: 'Sorts Mill Goudy',
        fontFeatures: <FontFeature>[
          FontFeature.historicalForms(), // Enables "hist".
          FontFeature.historicalLigatures() // Enables "hlig".
        ],
      ),
    );
  }
}

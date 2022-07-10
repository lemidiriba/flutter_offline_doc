// Flutter code sample for FontFeature.alternativeFractions
//
// The Ubuntu Mono font supports the `afrc` feature. It causes digits
// before slashes to become superscripted and digits after slashes to become
// subscripted. This contrasts to the effect seen with [FontFeature.fractions].
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_afrc.png)

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
    // The Ubuntu Mono font can be downloaded from Google Fonts (https://www.google.com/fonts).
    return const Text(
      'Fractions: 1/2 2/3 3/4 4/5',
      style: TextStyle(
        fontFamily: 'Ubuntu Mono',
        fontFeatures: <FontFeature>[
          FontFeature.alternativeFractions(),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tapshyrma0102_flutter/home_page.dart';
import 'package:tapshyrma0102_flutter/home_page_2.dart';

void main() {
  runApp(const BirinchiTapshyrma());
}

class BirinchiTapshyrma extends StatelessWidget {
  const BirinchiTapshyrma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';

class ImageDuzenleme extends StatelessWidget {
  String resimUrl;
  double? paddingLR;
  ImageDuzenleme({super.key, required this.resimUrl, required this.paddingLR});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: paddingLR!, top: 10.0, right: paddingLR!, bottom: 10.0),
      child: Image.asset(resimUrl),
    );
  }
}

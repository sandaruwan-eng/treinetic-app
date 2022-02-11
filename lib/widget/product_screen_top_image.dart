import 'package:flutter/material.dart';
import 'package:sampleapp/constant/widgets_constant.dart';
import 'package:sampleapp/style_guide/image_assets.dart';

class ProductScreenTopImage extends StatelessWidget {
  const ProductScreenTopImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      VRBOX,
      scale: 3.6 * WidgetsConstant.height,
    );
  }
}

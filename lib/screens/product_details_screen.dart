import 'package:flutter/material.dart';
import 'package:sampleapp/constant/widgets_constant.dart';
import 'package:sampleapp/widget/product_screen_bottom_part.dart';
import 'package:sampleapp/widget/product_screen_top_image.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 30.0 * WidgetsConstant.width),
            child: const Icon(
              Icons.mark_email_unread_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: const <Widget>[
          ProductScreenTopImage(),
          ProductScreenBottomPart(),
        ],
      ),
    );
  }
}

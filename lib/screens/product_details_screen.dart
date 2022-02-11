import 'package:flutter/material.dart';
import 'package:sampleapp/constant/widgets_constant.dart';
import 'package:sampleapp/models/product.dart';
import 'package:sampleapp/widget/widget.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key, required this.arguments})
      : super(key: key);

  final Product arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
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
        children: <Widget>[
          ProductScreenTopImage(
            productItem: arguments,
          ),
          ProductScreenBottomPart(
            productItem: arguments,
          ),
        ],
      ),
    );
  }
}

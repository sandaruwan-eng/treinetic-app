import 'package:flutter/material.dart';
import 'package:sampleapp/constant/widgets_constant.dart';

import 'produce_list_item.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250 * WidgetsConstant.height,
      child: Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) =>
                const ProductListItem()),
      ),
    );
  }
}

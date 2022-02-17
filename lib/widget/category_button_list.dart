import 'package:flutter/material.dart';
import 'package:sampleapp/constant/widgets_constant.dart';
import 'package:sampleapp/widget/widget.dart';

class ProductCategoryList extends StatelessWidget {
  const ProductCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> buttonName = const [
      'All Product',
      'Popular',
      'Recent',
      'Other',
      'Other'
    ];
    return Padding(
      padding: EdgeInsets.only(left: 20 * WidgetsConstant.width),
      child: SizedBox(
        height: 80 * WidgetsConstant.height,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) =>
              CategoryListItem(buttonName: buttonName[index]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sampleapp/constant/widgets_constant.dart';
import 'package:sampleapp/models/product.dart';
import 'package:sampleapp/screens/product_details_screen.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({Key? key, required this.productItem})
      : super(key: key);
  final Product productItem;
  @override
  Widget build(BuildContext context) {
    final _appTheme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, '/second', arguments: productItem);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(
                  arguments: productItem,
                )));
      },
      child: Padding(
        padding: EdgeInsets.only(
            left: 30 * WidgetsConstant.width,
            top: 30.0 * WidgetsConstant.height),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          width: 150 * WidgetsConstant.width,
          child: Padding(
            padding: EdgeInsets.all(8.0 * WidgetsConstant.width),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 130 * WidgetsConstant.height,
                  child: Image.network(
                    productItem.images,
                    scale: 6,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.0 * WidgetsConstant.height),
                      child: SizedBox(
                        width: 130.0 * WidgetsConstant.width,
                        height: 20.0 * WidgetsConstant.width,
                        child: Text(
                          productItem.title,
                          style: _appTheme.textTheme.button!
                              .merge(const TextStyle(color: Colors.black)),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.0 * WidgetsConstant.height),
                      child: Text(
                        productItem.price,
                        style: _appTheme.textTheme.caption!
                            .merge(const TextStyle(color: Colors.black)),
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.add_box,
                      size: 35 * WidgetsConstant.height,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

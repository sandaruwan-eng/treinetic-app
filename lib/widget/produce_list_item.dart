import 'package:flutter/material.dart';
import 'package:sampleapp/constant/widgets_constant.dart';
import 'package:sampleapp/style_guide/image_assets.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appTheme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(
          left: 30 * WidgetsConstant.width, top: 30.0 * WidgetsConstant.height),
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
              Image.asset(
                VRBOX,
                scale: 6,
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.0 * WidgetsConstant.height),
                    child: Text(
                      'HP Reverb G2',
                      style: _appTheme.textTheme.button!
                          .merge(const TextStyle(color: Colors.black)),
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
                      "72.55",
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
    );
  }
}

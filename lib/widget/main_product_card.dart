import 'package:flutter/material.dart';
import 'package:sampleapp/constant/widgets_constant.dart';
import 'package:sampleapp/style_guide/image_assets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appTheme = Theme.of(context);
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30 * WidgetsConstant.height),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            height: 220 * WidgetsConstant.height,
            width: 340 * WidgetsConstant.width,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 40 * WidgetsConstant.height,
                  left: 20 * WidgetsConstant.width),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Improved Controller",
                    style: _appTheme.textTheme.headline6!
                        .merge(const TextStyle(color: Colors.white)),
                  ),
                  Text(
                    "Design With",
                    style: _appTheme.textTheme.headline6!
                        .merge(const TextStyle(color: Colors.white)),
                  ),
                  Text(
                    "Virtual Reality",
                    style: _appTheme.textTheme.headline6!
                        .merge(const TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20 * WidgetsConstant.height),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.only(
                                  top: 1.0 * WidgetsConstant.height,
                                  bottom: 1.0 * WidgetsConstant.height,
                                  left: 20.0 * WidgetsConstant.width,
                                  right: 20.0 * WidgetsConstant.width),
                              primary: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              '  Buy Now!  ',
                              style: _appTheme.textTheme.button!
                                  .merge(const TextStyle(color: Colors.blue)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 170.0 * WidgetsConstant.width,
          top: 80.0 * WidgetsConstant.height,
          child: Image.asset(
            VRBOX,
            scale: 5,
          ),
        )
      ],
    );
  }
}

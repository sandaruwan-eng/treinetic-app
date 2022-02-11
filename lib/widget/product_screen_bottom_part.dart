import 'package:flutter/material.dart';
import 'package:sampleapp/constant/widgets_constant.dart';
import 'package:sampleapp/models/product.dart';

class ProductScreenBottomPart extends StatelessWidget {
  const ProductScreenBottomPart({Key? key, required this.productItem})
      : super(key: key);

  final Product productItem;
  @override
  Widget build(BuildContext context) {
    final _appTheme = Theme.of(context);
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          height: 400 * WidgetsConstant.height,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Divider(
                height: 20,
                thickness: 3,
                indent: 130,
                endIndent: 130,
                color: Colors.blue.shade100,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 30 * WidgetsConstant.width,
                    top: 5 * WidgetsConstant.height),
                child: Row(
                  children: [
                    Text(
                      productItem.title,
                      style: _appTheme.textTheme.headline6!
                          .merge(const TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30 * WidgetsConstant.width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      productItem.price,
                      style: _appTheme.textTheme.headline6!
                          .merge(const TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30 * WidgetsConstant.width),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.star_outline,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star_outline,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star_outline,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star_outline,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star_outline,
                      color: Colors.amber,
                    ),
                    Text("${productItem.rating} (28 reviews)"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 30 * WidgetsConstant.width,
                    right: 30 * WidgetsConstant.width,
                    top: 20 * WidgetsConstant.height),
                child: SizedBox(
                  height: 95 * WidgetsConstant.height,
                  child: Text(
                    productItem.description,
                    style: _appTheme.textTheme.button!
                        .merge(const TextStyle(color: Colors.grey)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 30 * WidgetsConstant.width,
                    right: 30 * WidgetsConstant.width,
                    top: 20 * WidgetsConstant.height),
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        Container(
                            width: 40.0 * WidgetsConstant.height,
                            height: 40.0 * WidgetsConstant.height,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: const Icon(Icons.remove_red_eye_sharp)),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10 * WidgetsConstant.height),
                          child: Text(
                            "Improved Optics",
                            style: _appTheme.textTheme.caption!
                                .merge(const TextStyle(color: Colors.black)),
                          ),
                        ) // clear Brightness , Wifi Controllers
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 40.0 * WidgetsConstant.height,
                          height: 40.0 * WidgetsConstant.height,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: const Icon(
                              Icons.light_mode_outlined), //ac_unit_outlined
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10 * WidgetsConstant.height),
                          child: Text(
                            "clear Brightness",
                            style: _appTheme.textTheme.caption!
                                .merge(const TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 40.0 * WidgetsConstant.height,
                          height: 40.0 * WidgetsConstant.height,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: const Icon(Icons.wifi),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10 * WidgetsConstant.height),
                          child: Text(
                            "Wifi Controllers",
                            style: _appTheme.textTheme.caption!
                                .merge(const TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 15.0 * WidgetsConstant.height,
                ),
                child: ButtonTheme(
                  minWidth: 300.0 * WidgetsConstant.width,
                  height: 60.0 * WidgetsConstant.height,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // <-- Radius
                  ),
                  buttonColor: Colors.black,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Checkout",
                      style: _appTheme.textTheme.bodyText1!
                          .merge(const TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

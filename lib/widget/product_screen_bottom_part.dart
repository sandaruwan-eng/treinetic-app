import 'package:flutter/material.dart';
import 'package:sampleapp/constant/widgets_constant.dart';

class ProductScreenBottomPart extends StatelessWidget {
  const ProductScreenBottomPart({Key? key}) : super(key: key);

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
                padding: EdgeInsets.only(left: 30 * WidgetsConstant.width),
                child: Row(
                  children: [
                    Text(
                      "Bobo VR Z5",
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
                      "62.88",
                      style: _appTheme.textTheme.headline6!
                          .merge(const TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

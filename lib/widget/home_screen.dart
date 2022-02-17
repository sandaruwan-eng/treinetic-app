import 'package:flutter/material.dart';
import 'package:sampleapp/constant/widgets_constant.dart';
import 'package:sampleapp/widget/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _appTheme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                left: 30 * WidgetsConstant.width,
                top: 5 * WidgetsConstant.height),
            child: Row(
              children: [
                Text(
                  "Enjoy the world",
                  style: _appTheme.textTheme.headline6!
                      .merge(const TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30 * WidgetsConstant.width),
            child: Row(
              children: [
                Text(
                  "into virtual teality",
                  style: _appTheme.textTheme.headline6!
                      .merge(const TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
          const ProductCard(),
          const ProductCategoryList(),
          const ProductList(),
        ],
      ),
    );
  }
}

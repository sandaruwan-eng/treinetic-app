import 'package:flutter/material.dart';
import 'package:sampleapp/constant/widgets_constant.dart';

class CategoryListItem extends StatelessWidget {
  CategoryListItem({Key? key, required this.buttonName}) : super(key: key);

  final String buttonName;
  final ButtonStyle flatButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final _appTheme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(
          top: 25 * WidgetsConstant.height, left: 15 * WidgetsConstant.width),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                color: Colors.grey.shade100,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.only(
                    top: 1.0 * WidgetsConstant.height,
                    bottom: 1.0 * WidgetsConstant.height,
                    left: 20.0 * WidgetsConstant.width,
                    right: 20.0 * WidgetsConstant.width),
                primary: Colors.grey,
              ),
              onPressed: () {},
              child: Text(
                buttonName,
                style: _appTheme.textTheme.button!
                    .merge(const TextStyle(color: Colors.blue)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

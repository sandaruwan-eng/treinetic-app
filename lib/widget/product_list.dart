import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sampleapp/constant/widgets_constant.dart';
import 'package:sampleapp/controller/providers.dart';
import 'package:sampleapp/models/product.dart';
import 'package:sampleapp/widget/widget.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      AsyncValue<List<Product>?> productList = ref.watch(productListProvider);

      return productList.when(
          data: (list) {
            return SizedBox(
              height: 250 * WidgetsConstant.height,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: list!.length,
                  itemBuilder: (BuildContext context, int index) =>
                      ProductListItem(
                        productItem: list[index],
                      )),
            );
          },
          loading: () => Padding(
                padding: EdgeInsets.only(top: 100.0 * WidgetsConstant.height),
                child: const Center(child: CircularProgressIndicator()),
              ),
          error: (e, stackTrace) {
            return const Text("error");
          });
    });
  }
}

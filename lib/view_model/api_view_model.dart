import 'dart:async';
import 'package:sampleapp/constant/url_constant.dart';
import 'package:sampleapp/models/product.dart';
import 'package:sampleapp/services/api_service.dart';

Future<List<Product>?> getProductList() async {
  try {
    Iterable dataBody = await fetchData(UrlConstant.GET_TASK_LIST_URL);
    List<Product> posts =
        List<Product>.from(dataBody.map((model) => Product.fromJson(model)));
    return posts;
  } on Exception catch (exception) {
    // ignore: avoid_print
    print(exception);
    rethrow;
  } catch (error) {
    rethrow;
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sampleapp/view_model/api_view_model.dart';

final productListProvider = FutureProvider(
  (ref) => getProductList(),
);

import 'package:mobile_shop/common/utils/environment.dart';
import 'package:mobile_shop/src/categories/hook/results/categories_products_results.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_shop/src/products/models/product_model.dart';

FetchProduct fetchProductsByCategories(int category_id) {
  final products = useState<List<Products>>([]);
  final isLoading = useState(false);
  final error = useState<String?>(null);

  Future<void> fetchData() async {
    isLoading.value = true;
    try {
      // Fetch categories
      Uri url = Uri.parse(
          '${Environment.appBaseUrl}/api/products/category/?category=$category_id');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        products.value = productsFromJson(response.body);
      }
    } catch (e) {
      error.value = e.toString();
      print(e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  useEffect(() {
    fetchData();
    return;
  }, const []);

  void refetch() {
    isLoading.value = true;
    fetchData();
  }

  return FetchProduct(
    products: products.value,
    isLoading: isLoading.value,
    error: error.value,
    refetch: refetch,
  );
}

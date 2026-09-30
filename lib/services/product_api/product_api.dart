import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:stylish/model/product_api_model.dart';

class ProductRemoteDataSource {
  final String _url = "https://fakestoreapi.com/products/10";
  Future<ProductApiModel> fetchProduct() async {
    final response = await http.get(Uri.parse(_url));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return ProductApiModel.fromJson(jsonData);
    } else {
      throw Exception("Failed to load product");
    }
  }
}

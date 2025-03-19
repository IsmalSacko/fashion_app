import 'package:flutter/material.dart';
import 'package:mobile_shop/src/products/models/product_model.dart';

class FetchProduct {
  final List<Products> products;
  final bool isLoading;
  final String? error;
  final VoidCallback refetch;

  FetchProduct({
    required this.products,
    required this.isLoading,
    required this.error,
    required this.refetch,
  });
}

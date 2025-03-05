import 'package:flutter/material.dart';

class ShippingAdressScreen extends StatelessWidget {
  const ShippingAdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BackButton();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes Adresses'),
      ),
    );
  }
}

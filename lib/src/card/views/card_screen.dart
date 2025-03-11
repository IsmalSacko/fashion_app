import 'package:flutter/material.dart';

import '../../../common/services/storage.dart';
import '../../auth/views/login_screen.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');
    if (accessToken == null) {
      return const LoginPage();
    }
    return const Scaffold(
      body: Center(
        child: Text('Card Page'),
      ),
    );
  }
}

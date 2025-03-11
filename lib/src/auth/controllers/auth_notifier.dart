import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_shop/common/services/storage.dart';
import 'package:mobile_shop/common/utils/environment.dart';
import 'package:mobile_shop/common/utils/kstrings.dart';
import 'package:mobile_shop/common/widgets/error_modal.dart';
import 'package:mobile_shop/src/auth/models/auth_token_model.dart';

class AuthNotifier with ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void setLoading() {
    _isLoading = !_isLoading; // toggle the value of isLoading
    notifyListeners();
  }

  void loginFunc(String data, BuildContext ctx) async {
    setLoading();
    try {
      var url = Uri.parse('${Environment.appBaseUrl}/auth/token/login/');

      var response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
          },
          body: data);
      if (response.statusCode == 200) {
        String accessToken = accessTokenModelFromJson(response.body).authToken;
        // store the access token in the local storage (stoker le token d'accès dans le stockage local)
        Storage().setString('accessToken', accessToken);

        ///TODO: get user info
        ///TODO: get user extra data
        print(accessToken);
        setLoading();
      }
    } catch (e) {
      setLoading();
      showErrorPopup(ctx, AppText.kErrorLogin, null, null);
    }
  }

  void registrationFunc(String data, BuildContext ctx) async {
    setLoading();
    try {
      var url = Uri.parse('${Environment.appBaseUrl}/auth/users/');
      var headers = {
        'Content-Type': 'application/json',
      };
      var response = await http.post(url, headers: headers, body: data);
      if (response.statusCode == 201) {
        setLoading();
      } else if (response.statusCode == 400) {
        setLoading();
        var data = jsonDecode(response.body);
        showErrorPopup(ctx, data['password'][0], null, null);
      }
    } catch (e) {
      setLoading();
      showErrorPopup(ctx, AppText.kErrorLogin, null, null);
    }
  }

  void getUser(String accessToken) async {}
}

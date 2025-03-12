import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_shop/common/services/storage.dart';
import 'package:mobile_shop/common/utils/environment.dart';
import 'package:mobile_shop/common/utils/kstrings.dart';
import 'package:mobile_shop/common/widgets/error_modal.dart';
import 'package:mobile_shop/src/auth/models/auth_token_model.dart';
import 'package:mobile_shop/src/auth/models/profie_model.dart';
import 'package:mobile_shop/src/entrypoint/controllers/botton_tab_notifier.dart';
import 'package:provider/provider.dart';

class AuthNotifier with ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void setLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  bool _isRLoading = false;
  bool get isRLoading => _isRLoading;

  void setRLoading(bool value) {
    _isRLoading = value;
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
        Storage().setString('accessToken', accessToken);
        getUser(accessToken, ctx);
      } else {
        showErrorPopup(ctx, AppText.kErrorLogin, null, null);
      }
    } catch (e) {
      showErrorPopup(ctx, AppText.kErrorLogin, e.toString(), null);
    } finally {
      setLoading();
    }
  }

  void registrationFunc(String data, BuildContext ctx) async {
    setLoading();
    try {
      var url = Uri.parse('${Environment.appBaseUrl}/auth/users/');
      var headers = {
        'Content-Type': 'application/json', // set the content type
      };
      var response = await http.post(url, headers: headers, body: data);

      if (response.statusCode == 201) {
        setLoading();
        ctx.go('/home');
      } else if (response.statusCode == 400) {
        setLoading();
        var responseData = jsonDecode(response.body);

        // Récupérer les erreurs (si elles existent)
        String passwordError =
            responseData['password'] != null ? responseData['password'][0] : '';
        String emailError =
            responseData['email'] != null ? responseData['email'][0] : '';
        String usernameError =
            responseData['username'] != null ? responseData['username'][0] : '';

        // Construire un message d'erreur lisible
        String errorMessage =
            '$passwordError\n$emailError\n$usernameError'.trim();
        errorMessage = errorMessage.isNotEmpty
            ? errorMessage
            : 'Une erreur inconnue est survenue lors de l’inscription.';

        showErrorPopup(ctx, 'Erreur d’inscription', errorMessage, null);
      }
    } catch (e) {
      setLoading();

      // Afficher une erreur générique en cas d'exception
      showErrorPopup(ctx, 'Erreur de connexion',
          'Vérifiez votre connexion internet.', null);
    }
  }

  void getUser(String accessToken, BuildContext ctx) async {
    try {
      var url = Uri.parse('${Environment.appBaseUrl}/auth/users/me/');
      var response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Token $accessToken',
        },
      );

      if (response.statusCode == 200) {
        Storage().setString(accessToken, response.body);
        ctx.read<TabIndexNotifier>().setTabIndex(0);
        ctx.go('/home');
      } else {
        showErrorPopup(ctx, AppText.kErrorLogin, response.body, null);
      }
    } catch (e) {
      showErrorPopup(ctx, AppText.kErrorLogin, e.toString(), null);
    }
  }

  ProfileModel? getUserData() {
    String? accessToken = Storage().getString('accessToken');
    if (accessToken != null) {
      var data = Storage().getString(accessToken);
      if (data != null && data.isNotEmpty) {
        return ProfileModel.fromJson(jsonDecode(data));
      }
    }
    return null;
  }
}

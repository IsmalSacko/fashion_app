import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_shop/common/utils/kcolors.dart';
import 'package:mobile_shop/common/widgets/app_style.dart';
import 'package:mobile_shop/common/widgets/back_button.dart';
import 'package:mobile_shop/common/widgets/custom_button.dart';
import 'package:mobile_shop/common/widgets/email_textfield.dart';
import 'package:mobile_shop/common/widgets/password_field.dart';
import 'package:mobile_shop/src/auth/controllers/auth_notifier.dart';
import 'package:mobile_shop/src/auth/models/registration_model.dart';
import 'package:provider/provider.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late final TextEditingController _usernameController =
      TextEditingController();
  late final TextEditingController _emailController = TextEditingController();
  late final TextEditingController _passwordController =
      TextEditingController();

  final FocusNode _passwordNode = FocusNode();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Kolors.kOffWhite,
          title: Text('Inscription'.toUpperCase()),
          leading: AppBackButton(
            onTap: () {
              context.go('/home');
            },
          )),
      body: ListView(
        children: [
          SizedBox(height: 160.h),
          Text("Sacko Services",
              style: appStyle(24, Kolors.kPrimary, FontWeight.bold),
              textAlign: TextAlign.center),
          SizedBox(height: 20.h),
          Text("Hey, Bienvenue chez Sacko Services",
              style: appStyle(13, Kolors.kGray, FontWeight.normal),
              textAlign: TextAlign.center),
          SizedBox(height: 25.h),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  EmailTextField(
                    radius: 25,
                    focusNode: _passwordNode,
                    hintText: "Nom d'utilisateur",
                    controller: _usernameController,
                    prefixIcon: const Icon(
                      Icons.person,
                      size: 20,
                      color: Kolors.kGray,
                    ),
                    keyboardType: TextInputType.name,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(_passwordNode);
                    },
                  ),
                  SizedBox(height: 20.h),
                  EmailTextField(
                    radius: 25,
                    hintText: "Email",
                    controller: _emailController,
                    prefixIcon: const Icon(
                      Icons.email,
                      size: 20,
                      color: Kolors.kGray,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(_passwordNode);
                    },
                  ),
                  PasswordField(
                    controller: _passwordController,
                    focusNode: _passwordNode,
                    radius: 25,
                  ),
                  SizedBox(height: 20.h),
                  context.watch<AuthNotifier>().isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Kolors.kPrimary,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Kolors.kOffWhite),
                          ),
                        )
                      : CustomButton(
                          onTap: () {
                            RegistrationModel registrationModel =
                                RegistrationModel(
                                    username: _usernameController.text,
                                    email: _emailController.text,
                                    password: _passwordController.text);
                            String data =
                                registrationModelToJson(registrationModel);
                            print(data);
                            context
                                .read<AuthNotifier>()
                                .registrationFunc(data, context);
                          },
                          text: "S' I N S C R I R E",
                          btnWidth: ScreenUtil().screenWidth,
                          btnHieght: 45.h,
                          radius: 16,
                        ),
                ],
              )),
        ],
      ),
    );
  }
}

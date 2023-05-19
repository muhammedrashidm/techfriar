import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:techfriar/app/auth_bloc/auth_bloc.dart';
import 'package:techfriar/app/globals/colors.dart';
import 'package:techfriar/app/globals/image_assets.dart';
import 'package:techfriar/presentation/home/screen_trending.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String phoneNumber = '';
  String password = '';

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context,state){
          if (state.userData != null) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ScreenTrending()));
          }
          if (state.hasError) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage ?? 'Login failed')));
            BlocProvider.of<AuthBloc>(context).add(AuthEvent.removeError());
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        width: width,
                        color: MyColors.myGray,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 90,
                              left: 0,
                              right: 0,
                              child: Image.asset(ImageAssets.heroImage),
                            ),
                            Positioned(
                              top: 110,
                              right: 60,
                              child: Image.asset(
                                ImageAssets.logo,
                                width: 70,
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        width: width,
                        color: MyColors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text.rich(TextSpan(children: [
                              TextSpan(text: 'Don’t have an account?'),
                              TextSpan(
                                  text: ' Sign up',
                                  style: TextStyle(
                                      color: MyColors.primary,
                                      decoration: TextDecoration.underline))
                            ])),
                            SizedBox(
                              height: 40,
                            )
                          ],
                        ),
                      )),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 300,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: MyColors.white,
                        border: Border.all(color: MyColors.myGray, width: 2)),
                    height: 430,
                    width: 335,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Login with phone number",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          const Text(
                            "Enter your phone number and password to Log in and start predicting.",
                            style: TextStyle(color: MyColors.grayText),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: MyColors.myBorderGray)),
                            child: InternationalPhoneNumberInput(
                              selectorConfig: const SelectorConfig(
                                  selectorType:
                                      PhoneInputSelectorType.BOTTOM_SHEET),
                              hintText: 'Enter phone number',
                              onInputChanged: (PhoneNumber value) {
                                phoneNumber = value.phoneNumber ?? '';
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          SizedBox(
                            height: 50,
                            child: TextField(
                              obscureText: true,
                              onChanged: (s) {
                                setState(() {
                                  password = s;
                                });
                              },
                              decoration: const InputDecoration(
                                  labelText: "Enter your password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                      borderSide: BorderSide(
                                          color: MyColors.myGray, width: 1))),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [Text('Forgot password')],
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          state.isLoading
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : AppButton(
                                  onClick: () {
                                    if (phoneNumber.isEmpty) {
                                      return;
                                    }
                                    if (password.isEmpty) {
                                      return;
                                    }
                                    BlocProvider.of<AuthBloc>(context).add(
                                        AuthEvent.loginButtonPressed(
                                            phone: phoneNumber.trim(),
                                            password: password.trim()));
                                  },
                                ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Center(
                            child: Text('OR'),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: MyColors.primary, width: 1)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.email,
                                  color: Colors.blueAccent,
                                ),
                                Text(
                                  "Log In with Email",
                                  style: TextStyle(color: MyColors.grayText),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onClick});

  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 50,
        color: MyColors.primary,
        child: const Center(
          child: Text(
            "Login",
            style: TextStyle(
                color: MyColors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}

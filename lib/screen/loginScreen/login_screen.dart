import 'package:ecommerce01/styles/login_screen_style.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce01/widget/textformfiled_widget.dart';

import '../../appColor/app_colors.dart';
import '../../widget/button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

Widget buildTopPart() {
  return Column(
    children: [
      Icon(Icons.menu),
      Column(
        children: [
          MyTextFormField(
            hintText: 'E-mail',
            obscureText: false,
          ),
        ],
      ),
      Column(
        children: [
          MyTextFormField(
            hintText: 'Password',
            obscureText: true,
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MyButton(
                onPress: () {},
                color: AppColors.baseLightCyanColor,
                text: "Sig in",
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: MyButton(
                onPress: () {},
                color: AppColors.baseLightCyanColor,
                text: "Sig Up",
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        'Forgot Password?',
        style: LoginScreenStyle.forgotpasswordStyle,
      ),
    ],
  );
}

Widget builBottomPart() {
  return Container(
    height: 300,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'or Sign in with social networks',
          style: LoginScreenStyle.signinSocialStyle,
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,

            children: [
              //
              //facebook
              MaterialButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: AppColors.baseGrey40Color,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.facebook),
                  onPressed: () {}),
              SizedBox(
                width: 5.0,
              ),
              //
              //whatsapp
              MaterialButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: AppColors.baseGrey40Color,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.whatsapp),
                  onPressed: () {}),
              SizedBox(
                width: 5.0,
              ),
              //
              //reddit

              MaterialButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: AppColors.baseGrey40Color,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.reddit),
                  onPressed: () {}),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          child: Text('Sign Up'),
        )
      ],
    ),
  );
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login Screen'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(),
                  builBottomPart(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

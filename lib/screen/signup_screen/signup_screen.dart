import 'package:ecommerce01/appColor/app_colors.dart';
import 'package:ecommerce01/screen/loginScreen/login_screen.dart';
import 'package:ecommerce01/widget/button_widget.dart';
import 'package:flutter/material.dart';

import '../../styles/signup_screen_style.dart';
import '../../widget/textformfiled_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  Widget buildTopPart() {
    return Column(
      children: [
        Column(
          children: [
            MyTextFormField(
              hintText: 'Full Name',
              obscureText: false,
            ),
          ],
        ),
        Column(
          children: [
            MyTextFormField(
              hintText: 'Email',
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
        Column(
          children: [
            MyTextFormField(
              hintText: 'Confirm Password',
              obscureText: true,
            ),
          ],
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            child: MyButton(
                text: 'Create an Account',
                color: AppColors.baseDarkGreenColor,
                onPress: () {}),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
              text: "By siging up you agrees to our\n",
              style: SigninScreenStyle.signInAgressStyle,
              children: <TextSpan>[
                TextSpan(
                  text: 'Terms' + ' ',
                  style: SigninScreenStyle.termsTextStyle,
                ),
                TextSpan(
                  text: 'and' + ' ',
                  style: SigninScreenStyle.andTextStyle,
                ),
                TextSpan(
                  text: 'Conditions of Use',
                  style: SigninScreenStyle.conditionTextStyle,
                ),
              ]),
        ),
      ],
    );
  }

  Widget buildBottomPart() {
    return Container(
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'or sign in with social networks',
            style: SigninScreenStyle.signInSocialStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.548,
                      color: AppColors.baseGrey40Color,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Screen'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              buildTopPart(),
              buildBottomPart(),
            ],
          ),
        ),
      ),
    );
  }
}

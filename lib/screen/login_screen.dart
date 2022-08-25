import 'package:flutter/material.dart';
import 'package:ecommerce01/widget/textformfiled_widget.dart';

import '../widget/button_widget.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

Widget buildTopPart(){
  return Column(
    children: [
      Icon(Icons.menu),
      Column(
        children: [
          MyTextFormField(hintText: 'E-mail',obscureText: true,),
        ],

      ),
      Column(
        children: [
          MyTextFormField(hintText: 'Password',obscureText: true,),
        ],

      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: MyButton(onPress: (){}, color: Colors.red, text: "sigin",

            )),
          ],
        ),
      )
    ],

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
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

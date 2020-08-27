import 'package:flutter/material.dart';
import 'package:flutter_widgets_demo/widgets/custom_button.dart';

class CustomButtonDemo extends StatelessWidget {
  const CustomButtonDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Sign In',
              onPressed: () {
                print('Outlined Button Sign In');
              },
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              type: CustomButtonType.Outlined,
            ),
            CustomButton(
              text: 'Sign In',
              onPressed: () {
                print('Filled Button Sign In');
              },
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            CustomButton(
              text: 'Sign In',
              onPressed: () {
                print('Shadowed Button Sign In');
              },
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              type: CustomButtonType.Shadowed,
            ),
          ],
        ),
      ),
    );
  }
}

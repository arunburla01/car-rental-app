import 'package:car_rental_app/services/navigation_service.dart';
import 'package:car_rental_app/widgets/button_widget.dart';
import 'package:car_rental_app/widgets/textformfieldwidgets.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
 const LoginView({ super.key });
  

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final  TextEditingController emailcontroller = TextEditingController();
  final  TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: 194, left: 20,
      child: SizedBox(
        height:335 ,width: 385,
        child: Scaffold(
          appBar: AppBar(title: Text("login"),),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[Textformfieldwidgets(controler:emailcontroller , hintText: "enter email",),
            Textformfieldwidgets(controler:passcontroller , hintText: "enter pass",obscureText: true,),
            ButtonWidget(text: "login", onPressed: (){},backgroundColor: Color(0xFF3FAEFD),buttonheight: 335,buttonwidth: 50,)
             ] ),
        ),
      ),
    );
}
}
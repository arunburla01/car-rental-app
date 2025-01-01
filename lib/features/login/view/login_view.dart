import 'package:car_rental_app/services/navigation_service.dart';
import 'package:car_rental_app/utils/color_constants.dart';
import 'package:car_rental_app/widgets/button_widget.dart';
import 'package:car_rental_app/widgets/logo_widget.dart';
import 'package:car_rental_app/widgets/inputTextfieldwidget.dart';
import 'package:car_rental_app/widgets/text_buttonwidget.dart';
import 'package:car_rental_app/widgets/tittle_subtittle.dart';
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
    return  Padding(
      padding: EdgeInsets.all(10),
      child: Scaffold(
        body: ScrollConfiguration(
          behavior:ScrollBehavior(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           // mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[LogoWidget(height: 202,width: 130,),
            TitleAndSubHeadingWidget(title: "welcome back",subHeading: "login to your account using email",),
            InputTextFieldWidget(textEditingController:emailcontroller , 
            hintText: "enter email",prefixIcon: Icon(Icons.email),),
            InputTextFieldWidget(textEditingController:passcontroller ,
             hintText: "enter pass",obscureText: true,prefixIcon: Icon(Icons.lock),suffixIcon: Icon(Icons.visibility),),
            Align(alignment:Alignment.centerRight,child: TextButtonwidget(text:"forgot password",color: ColorsConstants.primaryColor,)),
            ButtonWidget(buttonTitle: "login", onPressed: (){
              NavigationService().navigateTo("/SignupView");
            },),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [TextButtonwidget(text: "First time here?",color: Colors.black,),
            TextButtonwidget(text: "signUp",color: ColorsConstants.primaryColor,)],)
             ] ),
        ),
      ),
    );
}
}
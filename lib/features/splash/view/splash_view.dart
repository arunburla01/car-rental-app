import 'package:car_rental_app/routes/routes_constants.dart';
import 'package:car_rental_app/services/navigation_service.dart';
import 'package:car_rental_app/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({ super.key });

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState(){
    super.initState();
    initially();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LogoWidget(
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    )
      
    ;
  }
  
   initially() async {
   await Future.delayed(Duration(seconds:2));
   // if already login navigate to homescreen
   // or new customer then navigate to login
    NavigationService().navigateTo(RoutesConstants.loginscreen);



  }
}
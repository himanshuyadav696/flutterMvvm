import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mvvm/screens/HomeScreen.dart';
class Splash extends StatefulWidget{
  const Splash({super.key});
  @override
  _SplashState createState() => _SplashState();
}
class _SplashState extends State<Splash>{
  @override void initState(){
    super.initState();
    _navigateToLogin();
  }
  _navigateToLogin() async{
    await Future.delayed(const Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const HomeScreen()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ED787E"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 140,
              width: 140,
              child: SvgPicture.asset("assests/images/splash_logo.svg"),
            ),
            const SizedBox(
              height: 40,
              width: 40,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
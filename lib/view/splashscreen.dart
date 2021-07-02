import 'dart:async';

import 'package:elixia_customer/common_widgets/appcolors.dart';
import 'package:elixia_customer/common_widgets/apptext.dart';
import 'package:elixia_customer/responsive/sizeconfig.dart';
import 'package:elixia_customer/view/loginscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => LoginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff2E3191),
                  Color(0xff29AAE1),
                ],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.heightMultiplier! * 2),
                          child: AppText(
                            text: "Supply Chain Control Tower".toUpperCase(),
                            color: AppColors.white,
                            fontSize: SizeConfig.textMultiplier! * 2.5,
                            fontFamily: 'Montserrat-Bold',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.heightMultiplier! * 1),
                          child: AppText(
                            text: "End to End Logistic Management Solution",
                            color: AppColors.white,
                            fontSize: SizeConfig.textMultiplier! * 1.3,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Column(
                            children: [
                              AppText(
                                text: 'Powered By:',
                                fontSize: SizeConfig.textMultiplier! * 1.5,
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ),
                              // Padding(
                              //   padding: EdgeInsets.only(
                              //       top: SizeConfig.heightMultiplier! * 1),
                              //   child: Image.asset(
                              //     'res/images/elixia_logo.png',
                              //     width: SizeConfig.imageSizeMultiplier! * 15,
                              //   ),
                              // ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: SizeConfig.heightMultiplier! * 1),
                                child: AppText(
                                  text: 'Elixia Tech Solutions Ltd.',
                                  fontSize: SizeConfig.textMultiplier! * 1.6,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: SizeConfig.heightMultiplier! * 4,
                                    top: SizeConfig.heightMultiplier! * .2),
                                child: AppText(
                                  text: 'sales@elixia.tech',
                                  fontSize: SizeConfig.textMultiplier! * 1.4,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
    });
  }
}

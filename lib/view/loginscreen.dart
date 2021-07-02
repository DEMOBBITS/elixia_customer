import 'package:elixia_customer/common_widgets/appcolors.dart';
import 'package:elixia_customer/common_widgets/apptext.dart';
import 'package:elixia_customer/responsive/sizeconfig.dart';
import 'package:elixia_customer/view/dashboardpage.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
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
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier! * 8,
                          bottom: SizeConfig.heightMultiplier! * 8),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            // Image.asset(
                            //   'res/images/splash_logo.png',
                            //   width: SizeConfig.imageSizeMultiplier !* 20,
                            // ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: SizeConfig.heightMultiplier! * 1),
                              child: AppText(
                                text:
                                    "Supply Chain Control Tower".toUpperCase(),
                                color: AppColors.white,
                                fontSize: SizeConfig.textMultiplier! * 2,
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
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Username',
                          labelStyle:
                              TextStyle(fontSize: 15.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextField(
                          obscureText: _isHidden,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  fontSize: 15.0, color: Colors.white),
                              suffix: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(
                                  _isHidden
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ))),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(
                          left: SizeConfig.widthMultiplier! * 9,
                          right: SizeConfig.widthMultiplier! * 9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            height: SizeConfig.heightMultiplier! * 3,
                          ),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DashboardPage()));
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.only(left: 40, right: 40)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.white))),
                              ),
                              child: Container(
                                width: Theme.of(context).buttonTheme.minWidth,
                                child: Center(
                                  child: AppText(
                                    text: 'Login',
                                    textAlign: TextAlign.center,
                                    fontSize: SizeConfig.textMultiplier! * 2,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: GestureDetector(
                              onTap: () {
                                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => GNRDetails(),));
                              },
                              child: AppText(
                                text: 'Forgot Password ?',
                                padding: EdgeInsets.symmetric(
                                    vertical: SizeConfig.heightMultiplier! * 2),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // return Scaffold(
    //   body: SingleChildScrollView(
    //     child: Container(
    //       height: MediaQuery.of(context).size.height,
    //       width: MediaQuery.of(context).size.width,
    //       decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //           begin: Alignment.topLeft,
    //           end: Alignment.bottomRight,
    //           colors: [
    //             Color(0xff2E3191),
    //             Color(0xff29AAE1),
    //           ],
    //         ),
    //       ),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Text(
    //             "Supply Chain Control Tower".toUpperCase(),
    //             style: GoogleFonts.montserrat(
    //               color: Colors.white,
    //               textStyle: Theme.of(context).textTheme.headline4,
    //               fontSize: 20,
    //               fontWeight: FontWeight.w700,
    //               fontStyle: FontStyle.normal,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 5,
    //           ),
    //           Text(
    //             "End to End Logistics Automation Solution",
    //             style: GoogleFonts.montserrat(
    //               color: Colors.white,
    //               textStyle: Theme.of(context).textTheme.headline4,
    //               fontSize: 15,
    //               fontWeight: FontWeight.w300,
    //               fontStyle: FontStyle.normal,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 80,
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(left: 30.0, right: 30.0),
    //             child: TextField(
    //               decoration: InputDecoration(
    //                 border: UnderlineInputBorder(),
    //                 labelText: 'Username',
    //                 labelStyle: TextStyle(fontSize: 15.0, color: Colors.white),
    //               ),
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(left: 30.0, right: 30.0),
    //             child: TextField(
    //                 obscureText: _isHidden,
    //                 decoration: InputDecoration(
    //                     border: UnderlineInputBorder(),
    //                     labelText: 'Password',
    //                     labelStyle:
    //                         TextStyle(fontSize: 15.0, color: Colors.white),
    //                     suffix: InkWell(
    //                       onTap: _togglePasswordView,
    //                       child: Icon(
    //                         _isHidden ? Icons.visibility : Icons.visibility_off,
    //                       ),
    //                     ))),
    //           ),
    //           SizedBox(height: 80),
    //           ElevatedButton(
    //             style: ButtonStyle(
    //                 backgroundColor:
    //                     MaterialStateProperty.all<Color>(Colors.white),
    //                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //                     RoundedRectangleBorder(
    //                         borderRadius: BorderRadius.circular(18.0),
    //                         side: BorderSide(color: Colors.blue)))),
    //             onPressed: () {
    //               Navigator.push(context,
    //                   MaterialPageRoute(builder: (context) => DashboardPage()));
    //             },
    //             child: Text(
    //               "Login",
    //               style: TextStyle(color: Colors.blue),
    //             ),
    //           ),
    //           SizedBox(height: 10),
    //           Text("Forget Password ?", style: TextStyle(color: Colors.white))
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}

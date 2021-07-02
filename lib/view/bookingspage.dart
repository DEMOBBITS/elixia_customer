import 'package:elixia_customer/common_widgets/appcolors.dart';
import 'package:elixia_customer/common_widgets/apptext.dart';
import 'package:elixia_customer/responsive/sizeconfig.dart';
import 'package:elixia_customer/view/addbooking.dart';
import 'package:elixia_customer/view/bookingdetailspage.dart';
import 'package:elixia_customer/view/drawerdata.dart';
import 'package:elixia_customer/view/filterpage.dart';
import 'package:flutter/material.dart';

class BookingsPage extends StatefulWidget {
  @override
  _BookingsPageState createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  _toggleAnimation() {
    _animationController.isDismissed
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rightSlide = MediaQuery.of(context).size.width * 0.6;
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        double slide = rightSlide * _animationController.value;
        double scale = 1 - (_animationController.value * 0.3);
        return Stack(
          children: [
            Scaffold(
              body: const DrawerData(),
            ),
            Transform(
              transform: Matrix4.identity()
                ..translate(slide)
                ..scale(scale),
              alignment: Alignment.center,
              child: Scaffold(
                appBar: AppBar(
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff2E3191),
                          Color(0xff29AAE1),
                        ],
                        stops: [0.5, 1.0],
                      ),
                    ),
                  ),
                  elevation: 0.0,
                  title: Text("Booking "),
                  leading: IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () => _toggleAnimation(),
                  ),
                  actions: [
                    Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.search,
                            size: 26.0,
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddBooking()));
                          },
                          child: Icon(
                            Icons.add,
                            size: 26.0,
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FilterPage()));
                          },
                          child: Icon(
                            Icons.sort,
                            size: 26.0,
                          ),
                        )),
                  ],
                ),
                body: SingleChildScrollView(
                  child: Container(
                    // height: MediaQuery.of(context).size.height,
                    // width: MediaQuery.of(context).size.width,
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
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 12, 12, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BookingDetailsPage()));
                                    },
                                    child: Container(
                                      height: 200,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5.0,
                                                  right: 5.0,
                                                  top: 10.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: AppText(
                                                      text:
                                                          "BN00124578 | 01-01-2021 | 10:40 AM",
                                                      color: AppColors.darkGrey,
                                                      fontSize: SizeConfig
                                                              .textMultiplier! *
                                                          2,
                                                      fontFamily:
                                                          'Montserrat-Bold',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  AppText(
                                                    text: "Received",
                                                    color: AppColors.black,
                                                    fontSize: SizeConfig
                                                            .textMultiplier! *
                                                        2,
                                                    fontFamily:
                                                        'Montserrat-Bold',
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: AppText(
                                                    text: "Mumbai",
                                                    color: AppColors.black,
                                                    fontSize: SizeConfig
                                                            .textMultiplier! *
                                                        2,
                                                    fontFamily:
                                                        'Montserrat-Bold',
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: AppText(
                                                    text: "Baramula",
                                                    color: AppColors.black,
                                                    fontSize: SizeConfig
                                                            .textMultiplier! *
                                                        2,
                                                    fontFamily:
                                                        'Montserrat-Bold',
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text("01-01-2021"),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text("02-01-2021"),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text("Ram Ltd."),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

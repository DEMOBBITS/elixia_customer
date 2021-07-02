import 'package:elixia_customer/common_widgets/appcolors.dart';
import 'package:elixia_customer/common_widgets/apptext.dart';
import 'package:elixia_customer/responsive/sizeconfig.dart';
import 'package:elixia_customer/view/addbooking.dart';
import 'package:elixia_customer/view/adddelivery.dart';
import 'package:flutter/material.dart';

class AddShip extends StatefulWidget {
  @override
  _AddShipState createState() => _AddShipState();
}

class _AddShipState extends State<AddShip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Booking"),
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
      ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 350,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: Text("Shipment Details"),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Source",
                              ),
                            ),
                            Expanded(
                              child: Text("Destination"),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: 'Mumbai',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: 'Pune',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: 'Budgeted Distance:',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '148 KM',
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 15),
                                      )
                                    ]),
                              ),
                            ),
                            Text(
                              "|",
                              style: TextStyle(fontSize: 20),
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: 'Budgeted Time:',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '4 Hrs 30 mins.',
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 15),
                                      )
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: 'Requested Pickup Date',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 15),
                                      )
                                    ]),
                              ),
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: 'Requested Delivery Date',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 15),
                                      )
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: '01-01-2021',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: '02-01-2021',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            AppText(
                              text: "No of Vehicles",
                              color: AppColors.darkGrey,
                              fontSize: SizeConfig.textMultiplier! * 2,
                              fontFamily: 'Montserrat-Bold',
                              fontWeight: FontWeight.w500,
                            ),
                            AppText(
                              text: "*",
                              color: AppColors.red,
                              fontSize: SizeConfig.textMultiplier! * 2,
                              fontFamily: 'Montserrat-Bold',
                              fontWeight: FontWeight.w800,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: '01',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: AppText(
                          text: "Load Type",
                          color: AppColors.darkGrey,
                          fontSize: SizeConfig.textMultiplier! * 2,
                          fontFamily: 'Montserrat-Bold',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: Text("Order Details"),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            AppText(
                              text: "Required Vehicle Type",
                              color: AppColors.darkGrey,
                              fontSize: SizeConfig.textMultiplier! * 2,
                              fontFamily: 'Montserrat-Bold',
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            AppText(
                              text: "Weights (in kgs)",
                              color: AppColors.darkGrey,
                              fontSize: SizeConfig.textMultiplier! * 2,
                              fontFamily: 'Montserrat-Bold',
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: '200',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddBooking()));
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.only(left: 40, right: 40)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white))),
                  ),
                  child: Container(
                    width: Theme.of(context).buttonTheme.minWidth,
                    child: Center(
                      child: AppText(
                        text: 'Previous',
                        textAlign: TextAlign.center,
                        fontSize: SizeConfig.textMultiplier! * 1.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddDelivery()));
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.only(left: 40, right: 40)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white))),
                  ),
                  child: Container(
                    width: Theme.of(context).buttonTheme.minWidth,
                    child: Center(
                      child: AppText(
                        text: 'Next',
                        textAlign: TextAlign.center,
                        fontSize: SizeConfig.textMultiplier! * 1.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

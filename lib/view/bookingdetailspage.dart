import 'package:elixia_customer/common_widgets/appcolors.dart';
import 'package:elixia_customer/common_widgets/apptext.dart';
import 'package:elixia_customer/responsive/sizeconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text("Booking Details"),
      ),
      body: SingleChildScrollView(
        child: Container(
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: AppText(
                                    text: "Movement Type",
                                    color: AppColors.darkGrey,
                                    fontSize: SizeConfig.textMultiplier! * 2,
                                    fontFamily: 'Montserrat-regular',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(
                                  child: AppText(
                                    text: "Domestics",
                                    color: AppColors.black,
                                    fontSize: SizeConfig.textMultiplier! * 2,
                                    fontFamily: 'Montserrat-Bold',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: AppText(
                                    text: "Booking Date & Time",
                                    color: AppColors.darkGrey,
                                    fontSize: SizeConfig.textMultiplier! * 2,
                                    fontFamily: 'Montserrat-Bold',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(
                                  child: AppText(
                                    text: "01-01-2020 | 10:00 AM",
                                    color: AppColors.black,
                                    fontSize: SizeConfig.textMultiplier! * 2,
                                    fontFamily: 'Montserrat-Bold',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  //Text(""),
                                )
                              ],
                            ),
                          )
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
                                  child: Text("Mumbai"),
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
                                  child: Text(
                                    "Destination",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Pune"),
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
                                  child: Text(
                                    "Reg.Pickup Date",
                                  ),
                                ),
                                Expanded(
                                  child: Text("01-01-2021"),
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
                                  child: Text(
                                    "Reg.Delivery Date",
                                  ),
                                ),
                                Expanded(
                                  child: Text("02-01-2021"),
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
                                  child: Text(
                                    "Origin",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Mumbai"),
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
                                  child: Text(
                                    "Destination",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Pune"),
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
                                  child: Text(
                                    "Budgeted Distance",
                                  ),
                                ),
                                Expanded(
                                  child: Text("148 KM"),
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
                                  child: Text(
                                    "Budgeted Time",
                                  ),
                                ),
                                Expanded(
                                  child: Text("4 hrs 30 mins"),
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
                                  child: Text(
                                    "No of Vehicles",
                                  ),
                                ),
                                Expanded(
                                  child: Text("01"),
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
                                  child: Text(
                                    "Load Type",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Dry"),
                                )
                              ],
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
                    height: 80,
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
                                Expanded(
                                  child: Text(
                                    "Source",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Mumbai"),
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
                                  child: Text(
                                    "Destination",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Pune"),
                                )
                              ],
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
                    height: 300,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                            child: Text("Delivery Details"),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Delivery No",
                                  ),
                                ),
                                Expanded(
                                  child: Text("DN02145784"),
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
                                  child: Text(
                                    "Delivery Date",
                                  ),
                                ),
                                Expanded(
                                  child: Text("01-01-2021 | 10:00 AM"),
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
                                  child: Text(
                                    "Billing Party",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Ram Ltd."),
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
                                  child: Text(
                                    "Billing Party Branch",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Mumbai"),
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
                                  child: Text(
                                    "Consignor",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Royal Logistics"),
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
                                  child: Text(
                                    "Consignor Address",
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "715, Neelkanth Corporate Park, Vidyavihar W, Mumbai 86",
                                    maxLines: 2,
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
                                  child: Text(
                                    "Consigner City",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Mumbai"),
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
                                  child: Text(
                                    "Consignee",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Laxmi Pvt Ltd."),
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
                                  child: Text(
                                    "Consignee Address",
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Shop No.5 , Shewanta Apartment \n Sinhgad Road Sai Nagri , Pune 6",
                                    maxLines: 2,
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
                                  child: Text(
                                    "Consignee City",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Pune"),
                                )
                              ],
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
                    height: 80,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                            child: Text("Product Details"),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Category",
                                  ),
                                ),
                                Expanded(
                                  child: Text("Dry"),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:elixia_customer/common_widgets/appcolors.dart';
import 'package:elixia_customer/common_widgets/apptext.dart';
import 'package:elixia_customer/responsive/sizeconfig.dart';
import 'package:elixia_customer/view/addship.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddBooking extends StatefulWidget {
  @override
  _AddBookingState createState() => _AddBookingState();
}

class _AddBookingState extends State<AddBooking> {
  // String dropdownvalue = 'Select Type';
  // var items = ['Select Type', 'Domestic', 'Import', 'Export'];

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm:ss | EEE d MMM').format(now);
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
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5.0, right: 5.0, top: 10.0),
                        child: Row(
                          children: [
                            AppText(
                              text: "Movement Type",
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
                      // DropdownButton(
                      //   value: dropdownvalue,
                      //   icon: Icon(Icons.keyboard_arrow_down),
                      //   items: items.map((String items) {
                      //     return DropdownMenuItem(
                      //         value: items,
                      //         child: Text(items)
                      //     );
                      //   }
                      //   ).toList(),
                      //   hint: Text("Select Type"),
                      //   onChanged: (String newValue) {
                      //     setState(() {
                      //       dropdownvalue = newValue;
                      //     });
                      //   },
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5.0, right: 5.0, top: 10.0),
                        child: Row(
                          children: [
                            AppText(
                              text: "Booking Date & Time",
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
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: formattedDate,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddShip()));
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
                      fontSize: SizeConfig.textMultiplier! * 2,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:elixia_customer/common_widgets/appcolors.dart';
import 'package:elixia_customer/common_widgets/apptext.dart';
import 'package:elixia_customer/responsive/sizeconfig.dart';
import 'package:elixia_customer/view/addship.dart';
import 'package:elixia_customer/view/bookingspage.dart';
import 'package:flutter/material.dart';

class AddDelivery extends StatefulWidget {
  @override
  _AddDeliveryState createState() => _AddDeliveryState();
}

class _AddDeliveryState extends State<AddDelivery> {
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 600,
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
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: AppText(
                            text: "Billing Party Branch",
                            color: AppColors.darkGrey,
                            fontSize: SizeConfig.textMultiplier! * 1.5,
                            fontFamily: 'Montserrat-Bold',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: TextField(
                            //  controller: _controller,
                            decoration: InputDecoration(
                              labelText: 'Ram Ltd.',
                              suffixIcon: IconButton(
                                onPressed: () {},
                                //    onPressed: _controller.clear,
                                icon: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: AppText(
                            text: "Billing Party Branch",
                            color: AppColors.darkGrey,
                            fontSize: SizeConfig.textMultiplier! * 1.5,
                            fontFamily: 'Montserrat-Bold',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: TextField(
                            //  controller: _controller,
                            decoration: InputDecoration(
                              labelText: 'Mumbai',
                              suffixIcon: IconButton(
                                onPressed: () {},
                                //    onPressed: _controller.clear,
                                icon: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: AppText(
                            text: "Consigner Name",
                            color: AppColors.darkGrey,
                            fontSize: SizeConfig.textMultiplier! * 1.5,
                            fontFamily: 'Montserrat-Bold',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: TextField(
                            //  controller: _controller,
                            decoration: InputDecoration(
                              labelText: 'Royal Logistics',
                              suffixIcon: IconButton(
                                onPressed: () {},
                                //    onPressed: _controller.clear,
                                icon: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: RichText(
                            text: TextSpan(
                              text: 'Address: ',
                              style: TextStyle(color: Colors.red, fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      '715, Neelkanth Corporate Park , Vidyavihar W, Mumbai 86. |',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: RichText(
                            text: TextSpan(
                              text: 'City: ',
                              style: TextStyle(color: Colors.red, fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Mumbai',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: AppText(
                            text: "Consignee Name",
                            color: AppColors.darkGrey,
                            fontSize: SizeConfig.textMultiplier! * 1.5,
                            fontFamily: 'Montserrat-Bold',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: TextField(
                            //  controller: _controller,
                            decoration: InputDecoration(
                              labelText: 'Laxmi Pvt Ltd',
                              suffixIcon: IconButton(
                                onPressed: () {},
                                //    onPressed: _controller.clear,
                                icon: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: RichText(
                            text: TextSpan(
                              text: 'Address: ',
                              style: TextStyle(color: Colors.red, fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'Shop No.5 , Shewanta Apartment ,Manik Baug , Sinhagad Road Sai nagri , Pune |',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: RichText(
                            text: TextSpan(
                              text: 'City: ',
                              style: TextStyle(color: Colors.red, fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Pune',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )
                              ],
                            ),
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
                  height: 100,
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
                              AppText(
                                text: "Category",
                                color: AppColors.darkGrey,
                                fontSize: SizeConfig.textMultiplier! * 2,
                                fontFamily: 'Montserrat-Bold',
                                fontWeight: FontWeight.w500,
                              ),
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
                  height: 150,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Row(
                            children: [
                              AppText(
                                text: "Remark",
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
                              hintText: '',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
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
                        showDialog(context: context, builder: (BuildContext context){
                          return AlertDialog(
                            content: Text("Booking request added successfully"),
                            actions: [
                              Center(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => BookingsPage()));
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
                                            side: BorderSide(color: Colors.blue))),
                                  ),
                                  child: Container(
                                    width: Theme.of(context).buttonTheme.minWidth,
                                    child: Center(
                                      child: AppText(
                                        text: 'Go Ahead',
                                        textAlign: TextAlign.center,
                                        fontSize: SizeConfig.textMultiplier! * 1.5,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        });
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
                            text: 'Submit',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

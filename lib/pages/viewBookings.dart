import 'package:flutter/material.dart';
import 'package:visitor_hostel/helperWidget/appBar.dart';
import 'package:visitor_hostel/helperWidget/bookingInfoTile.dart';

import '../helperWidget/bookingInfoCard.dart';


class ViewBookings extends StatefulWidget {
  @override
  _ViewBookingsState createState() => _ViewBookingsState();
}

class _ViewBookingsState extends State<ViewBookings> {
List < Map < String, dynamic >> bookingData = [{
    'Intender': 'Bob',
    'BookingFrom': '21st Jan',
    'BookingTo': '28th Jan',
    'Category': 'B',
    'Status': 'Active'
}, {
    'Intender': 'Jane',
    'BookingFrom': '22nd Jan',
    'BookingTo': '29th Jan',
    'Category': 'A',
    'Status': 'Inactive'
},
{
    'Intender': 'Bob',
    'BookingFrom': '21st Jan',
    'BookingTo': '28th Jan',
    'Category': 'B',
    'Status': 'Active'
}, {
    'Intender': 'Jane',
    'BookingFrom': '22nd Jan',
    'BookingTo': '29th Jan',
    'Category': 'A',
    'Status': 'Inactive'
},
];


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(),
        ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 24.0),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 247, 247),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                children: <Widget>[
                  SizedBox(height: 24.0),
                  Text(
                    'Bookings',
                    style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,),
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    children: List.generate(bookingData.length, (index) {
                      return Column(
                        children: [
                          SizedBox(height: 20.0),
                          BookingInfoCard(
                            bookingInfoTiles: [
                              BookingInfoTile(
                                iconData: Icons.person,
                                label: 'Intender',
                                value: bookingData[index]['Intender'],
                                color: Colors.white,
                              ),
                              BookingInfoTile(
                                iconData: Icons.today,
                                label: "BookingFrom",
                                value: bookingData[index]['BookingFrom'],
                                color: Color.fromARGB(255, 206, 205, 205),
                              ),
                              BookingInfoTile(
                                iconData: Icons.event,
                                label: "BookingTo",
                                value: bookingData[index]['BookingTo'],
                                color: Colors.white,
                              ),
                              BookingInfoTile(
                                iconData: Icons.category,
                                label: "Category",
                                value: bookingData[index]['Category'],
                                color: Color.fromARGB(255, 206, 205, 205),
                              ),
                              BookingInfoTile(
                                iconData: Icons.info,
                                label: "Status",
                                value: bookingData[index]['Status'],
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      );
                    }),
                  )]
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }}
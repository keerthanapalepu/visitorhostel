import 'package:flutter/material.dart';
import 'package:visitor_hostel/pages/activeBookings.dart';
import 'package:visitor_hostel/pages/cancelRequest.dart';
import 'package:visitor_hostel/pages/completedBookings.dart';
import 'package:visitor_hostel/pages/visitorsHostel.dart';
import 'package:visitor_hostel/pages/viewBookings.dart'; 

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => VisitorHostel(),
      '/viewBooking':(context) => ViewBookings(),
      '/cancelledBookings':(context) => CancelledBookings(),
      '/activeBooking':(context) => ActiveBookings(),
      '/completedBooking':(context) => CompletedBookings()
    }
));
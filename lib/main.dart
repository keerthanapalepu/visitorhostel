import 'package:flutter/material.dart';
import 'package:visitor_hostel/pages/visitorsHostel.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => VisitorHostel(),
    }
));
import 'package:flutter/material.dart';
import 'package:visitor_hostel/helperWidget/bookingInfoTile.dart';


class BookingInfoCard extends StatelessWidget {
  final List<BookingInfoTile> bookingInfoTiles;

  const BookingInfoCard({required this.bookingInfoTiles});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black, 
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: bookingInfoTiles,
        ),
      ),
    );
  }
}
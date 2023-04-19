import 'package:flutter/material.dart';

import '../objects/distanceslider.dart';
import '../objects/form.dart';
import '../objects/fromtotile.dart';
import '../objects/myappbar.dart';
import '../objects/timeslider.dart';
import '../objects/pickupdeliverypurpose.dart';
import '../objects/userchoiceseats.dart';
import '../objects/vehicleTile.dart';

class sixth extends StatefulWidget {
  const sixth({Key? key}) : super(key: key);

  @override
  State<sixth> createState() => _sixthState();
}

class _sixthState extends State<sixth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              TimeSlider(),
              SizedBox(
                height: 10.0,
              ),
              DistanceSlider(),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 1,
              ),
              UserChoiceSeats(),
              Divider(
                height: 1,
                color: Colors.black54,
              ),
              VehicleTile(
                imgUrl:
                    'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg',
                vehicleName: 'Toyota Corolla',
                seats: 5,
                rentalPricePerKm: 10.0,
                perKm: 50.0,
                distanceFromYou: 2.5,
              ),
              VehicleTile(
                imgUrl:
                    "https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg",
                vehicleName: 'Toyota Corolla',
                seats: 6,
                rentalPricePerKm: 10.0,
                perKm: 50.0,
                distanceFromYou: 2.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

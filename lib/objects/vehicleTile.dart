import 'package:flutter/material.dart';

class VehicleTile extends StatelessWidget {
  final String imgUrl;
  final String vehicleName;
  final int seats;
  final double rentalPricePerKm;
  final double perKm;
  final double distanceFromYou;

  VehicleTile({
    required this.imgUrl,
    required this.vehicleName,
    required this.seats,
    required this.rentalPricePerKm,
    required this.perKm,
    required this.distanceFromYou,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // Vehicle Details
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Vehicle Name
                  Text(
                    vehicleName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),

                  SizedBox(height: 8.0),

                  // Seats

                  Row(
                    children: [
                      Text(
                        '$seats',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),

                      Icon(
                        Icons.event_seat_sharp
                      ),

                    ],
                  ),

                  SizedBox(height: 8.0),

                  // Rental Price Per Km and Per Km
                  Text(
                    'Rs $rentalPricePerKm/- Per day $perKm km',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),

                  SizedBox(height: 8.0),

                  // Distance From You
                  Text(
                    '$distanceFromYou km away from you',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey
                    ),
                  ),

                  SizedBox(height: 16.0),

                  // Book Now Button
                  ElevatedButton(
                    onPressed: () {
                      // Handle booking logic here
                    },
                    child: Text('Book Now'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Vehicle Image
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(imgUrl),
            ),
          ),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_moto/controllers/controllerkyc.dart';

class KycPopUp extends StatelessWidget {
  final KycController kycPopUpController = Get.find<KycController>();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.white,
      ),
      child: Column(
        children: [

          SizedBox(height: 20.0,),

          Icon(
              Icons.check_circle,
            size: 60.0,
            color: Colors.green[400],
          ),

          SizedBox(height: 40.0,),

          Center(
            child: Container(
              child: Text(
                'Successfully Uploaded!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0
                ),
              ),
            ),
          ),

          Center(
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'You have uploaded all documents successfully.\n'
                        'Verification will be done by Rush wheels within short time.',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 10.0,),

          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              width: 95.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                    'ok',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

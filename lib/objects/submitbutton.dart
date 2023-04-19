import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_moto/objects/kycpopup.dart';
import '../controllers/controllerkyc.dart';

class SubmitButton extends StatelessWidget {
  final KycController kycPopUpController = Get.find<KycController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          showDialog(
              context: context,
              builder: (builder)
              {
                return AlertDialog(
                    content: Container(
                    width: 300.0,
                    height: 320.0,
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      KycPopUp(),
                    // Add your dialog content here
                    ],
                ),
                ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                );
              }
          );
      },
      child: Container(
        width: 85.0,
        height: 40.0,
        padding: EdgeInsets.all(8.0),
        child: Text(
            'Submit',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
        ),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}

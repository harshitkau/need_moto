import 'package:flutter/material.dart';

import '../objects/kyc_appbar.dart';
import '../objects/submitbutton.dart';
import '../objects/tilefordocument.dart';
import '../objects/kycwarning.dart';

class Tenth extends StatefulWidget {
  const Tenth({Key? key}) : super(key: key);

  @override
  State<Tenth> createState() => _TenthState();
}

class _TenthState extends State<Tenth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KycAppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Please upload documents to complete KYC',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                  ),
                ),
              ),

              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    //color:Colors.grey,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: NetworkImage('https://i.pinimg.com/236x/f7/65/29/f765299cc3e335bd03a0b3bd1afd1061.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Text(
                    'Upload Photo',
                    style: TextStyle(
                      color:Colors.grey,
                      fontSize: 25.0,
                    ),
                  ),

                  SizedBox(height: 30.0,),
                ],
              ),

              SizedBox(height: 10.0,),
              KycDocumentTile(),

              SizedBox(height: 10.0,),
              KycDocumentTile(),

              SizedBox(height: 10.0,),
              KycDocumentTile(),

              SizedBox(height: 10.0,),
              KycDocumentTile(),

              SizedBox(height: 10.0,),
              KycDocumentTile(),

              SizedBox(height: 10.0,),
              KycDocumentTile(),

              SizedBox(height: 30.0),
              KycWarning(),

              SizedBox(height: 10.0,),
              SubmitButton(),

              SizedBox(height: 30.0,),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class myOtp extends StatefulWidget {
  const myOtp({Key? key}) : super(key: key);

  @override
  State<myOtp> createState() => _myOtpState();
}

class _myOtpState extends State<myOtp> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pushNamed(context, "phone");
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          // controller: controller, // Optional
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/img1.png",
                width: 160,
                height: 160,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Phone Verification",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "we need to verify your register phone number before getting started !",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Pinput(
                length: 4,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Verify Phone"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "phone");
                    },
                    child: Text(
                      "edit phone number ?",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

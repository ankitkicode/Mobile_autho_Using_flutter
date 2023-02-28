import 'package:flutter/material.dart';

class myPhone extends StatefulWidget {
  const myPhone({Key? key}) : super(key: key);

  @override
  State<myPhone> createState() => _myPhoneState();
}

class _myPhoneState extends State<myPhone> {
  TextEditingController contrycode = TextEditingController();
  @override
  void initState() {
    contrycode.text = " +91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "we need to registerted your phone before getting started !",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: TextField(
                        controller: contrycode,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "|",
                      style: TextStyle(fontSize: 26, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "otp");
                  },
                  child: Text("Send OTP"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

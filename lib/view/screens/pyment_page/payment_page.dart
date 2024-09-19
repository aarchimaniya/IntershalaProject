import 'package:flutter/material.dart';

void main() {
  runApp(PaymentSuccessApp());
}

class PaymentSuccessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentSuccessScreen(),
    );
  }
}

class PaymentSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey[200], // Background color similar to the image
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Success Icon with some decorative background
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child:
                        Icon(Icons.check_circle, color: Colors.teal, size: 100),
                  ),
                  Positioned(
                    top: -20,
                    left: -20,
                    child:
                        Icon(Icons.star, color: Colors.orangeAccent, size: 20),
                  ),
                  Positioned(
                    top: -10,
                    right: -30,
                    child: Icon(Icons.star, color: Colors.redAccent, size: 15),
                  ),
                  Positioned(
                    bottom: -20,
                    left: 50,
                    child:
                        Icon(Icons.star, color: Colors.greenAccent, size: 25),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Payment Success Text
              Text(
                'Payment Success',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              // Amount
              Text(
                '\$35.00',
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 30),

              // Course Information Card
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://via.placeholder.com/150'), // Placeholder for the user's avatar
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Christiana Amandla',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      SizedBox(height: 16),

                      // Course Details
                      Text(
                        'Adobe Xd Editing Course',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),

                      SizedBox(height: 10),

                      // ID and Invoice Date
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ID Transcription\nTA11231PW',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            'Invoice Date\nNov14, 2023',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),

                      // Barcode Placeholder
                      Center(
                        child: Container(
                          width: 200,
                          height: 60,
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              'BARCODE',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Spacer(),

              // Done Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen, // Done button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'Done',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

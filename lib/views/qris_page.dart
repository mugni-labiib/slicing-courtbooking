import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sewa_lapangan/views/success.dart';
import 'package:sewa_lapangan/widgets/button.dart';

class QrCode extends StatelessWidget {
  const QrCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QRIS Payment",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Payment Amount",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Rp. 125.000",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Scan to Pay",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Point your camera at the QR code",
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
            ),
            SizedBox(height: 10),
            Text(
              "Open your mobile banking or e-wallet app and scan the QR code above to complete your payment",
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
            ),
            SizedBox(height: 20),
            CustomButton(
              textButton: "I Have Paid",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Success()),
                );
              },
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.ios_share, size: 16),
                Text("Share", style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),),
                SizedBox(width: 30),
                Icon(Icons.save_alt, size: 16),
                Text("Save", style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

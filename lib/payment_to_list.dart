import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello/components/buttons/custom_filled_button.dart';
import 'package:ostello/components/buttons/custom_outlined_button.dart';
import 'package:ostello/components/custom_text.dart';
import 'package:ostello/components/fonts/custom_icon_icons.dart';
import 'package:ostello/components/person_tile.dart';
import 'package:ostello/constants.dart';
import 'package:ostello/payments_page.dart';

class PaymentToList extends StatefulWidget {
  const PaymentToList({super.key});

  @override
  State<PaymentToList> createState() => _PaymentToListState();
}

class _PaymentToListState extends State<PaymentToList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            HapticFeedback.selectionClick();
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          CustomText(
            "Wallet",
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide(
                color: Color(0xFFDCE2EF),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          "Total Balance",
                          fontSize: 18,
                          color: Color(0xff212121),
                        ),
                        Text(
                          "₹500.00",
                          style: GoogleFonts.roboto(
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: CustomFilledButton(
                      height: 45,
                      child: Text(
                        "Recharge",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      onPressed: () {
                        HapticFeedback.selectionClick();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => PaymentsPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide(
                color: Color(0xFFDCE2EF),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    "Help Somebody Become a Verified OstelloAI Institute!",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff212121),
                  ),
                  SizedBox(height: 10),
                  CustomText(
                    "Refer and Earn 100 points every time you refer a coaching institute to get verified with Ostello!",
                    fontSize: 12,
                    color: Color(0xFF6F8581),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomOutlinedButton(
                    child: (color) => Text(
                      "Refer & Earn",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: color,
                      ),
                    ),
                    onPressed: () {
                      HapticFeedback.selectionClick();
                    },
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                "Recent Payments",
                fontSize: 16,
              ),
              Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: customColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(CustomIcon.group_1),
                  ),
                  CustomText("Filter"),
                ],
              ),
            ],
          ),
          TxnHistPersonTile(
            imgUrl: 'assets/person1.png',
            name: "Basant Kumar",
            number: "9834989189",
            dateTransacted: DateTime(2022, 5, 22),
            txnAmt: -122.00,
            onPressed: () {
              HapticFeedback.selectionClick();
            },
          ),
          Divider(
            thickness: 0.5,
          ),
          TxnHistPersonTile(
            imgUrl: 'assets/person2.png',
            name: "Suraj Sharma",
            number: "9834989189",
            dateTransacted: DateTime(2022, 5, 22),
            txnAmt: 15600.00,
            onPressed: () {
              HapticFeedback.selectionClick();
            },
          ),
          Divider(
            thickness: 0.5,
          ),
          TxnHistPersonTile(
            imgUrl: 'assets/person2.png',
            name: "Suraj Sharma",
            number: "9834989189",
            dateTransacted: DateTime(2022, 5, 22),
            txnAmt: 15600.00,
            onPressed: () {
              HapticFeedback.selectionClick();
            },
          ),
          Divider(
            thickness: 0.5,
          ),
          TxnHistPersonTile(
            imgUrl: 'assets/person3.png',
            name: "Abhilasha K",
            number: "9834989189",
            dateTransacted: DateTime(2022, 5, 22),
            txnAmt: 894.45,
            onPressed: () {
              HapticFeedback.selectionClick();
            },
          ),
        ],
      ),
    );
  }
}

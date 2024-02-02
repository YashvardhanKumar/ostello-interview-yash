import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello/components/text_form_field.dart';
import 'package:ostello/constants.dart';

import 'components/buttons/custom_filled_button.dart';
import 'components/buttons/custom_outlined_button.dart';
import 'components/custom_text.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({super.key});

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  final paymentAmt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            HapticFeedback.selectionClick();
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const CustomText(
            "Wallet",
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: const BorderSide(
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
                        const CustomText(
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
                  const Icon(
                    Icons.wallet_sharp,
                    size: 50,
                    color: customColor,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: const BorderSide(
                color: Color(0xFFDCE2EF),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    "Add Money To Wallet",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff212121),
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                      hint: "Enter Amount", controller: paymentAmt),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Chip(
                        label: CustomText("+₹200"),
                        shape: StadiumBorder(side: BorderSide()),
                        visualDensity: VisualDensity.compact,
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.white,
                      ),
                      Chip(
                        label: CustomText("+₹500"),
                        shape: StadiumBorder(side: BorderSide()),
                        visualDensity: VisualDensity.compact,
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.white,
                      ),
                      Chip(
                        label: CustomText("+₹1000"),
                        shape: StadiumBorder(side: BorderSide()),
                        visualDensity: VisualDensity.compact,
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.white,
                      ),
                      Chip(
                        label: CustomText("+₹1200"),
                        shape: StadiumBorder(side: BorderSide()),
                        visualDensity: VisualDensity.compact,
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomFilledButton(
                    child: Text(
                      "Proceed to Recharge",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: Colors.white,
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
          Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: const BorderSide(
                color: Color(0xFFDCE2EF),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    "Help Somebody Become a Verified OstelloAI Institute!",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff212121),
                  ),
                  const SizedBox(height: 10),
                  const CustomText(
                    "Refer and Earn 100 points every time you refer a coaching institute to get verified with Ostello!",
                    fontSize: 12,
                    color: Color(0xFF6F8581),
                  ),
                  const SizedBox(
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
        ],
      ),
    );
  }
}

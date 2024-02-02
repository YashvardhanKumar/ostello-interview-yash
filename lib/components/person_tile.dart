import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ostello/components/custom_text.dart';

class TxnHistPersonTile extends StatefulWidget {
  const TxnHistPersonTile({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.number,
    required this.dateTransacted,
    required this.txnAmt,
    required this.onPressed,
  });

  final String imgUrl;
  final String name, number;
  final DateTime dateTransacted;
  final double txnAmt;
  final VoidCallback onPressed;

  @override
  State<TxnHistPersonTile> createState() => _TxnHistPersonTileState();
}

class _TxnHistPersonTileState extends State<TxnHistPersonTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Image.asset(widget.imgUrl)),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: CustomText(
              widget.name,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          CustomText(
            ((widget.txnAmt < 0) ? "-₹" : "+₹") +
                (widget.txnAmt).abs().toStringAsFixed(2),
            color: (widget.txnAmt < 0) ? Colors.red : Colors.green,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child: CustomText("+91 ${widget.number}")),
          Flexible(
            child: CustomText(
              DateFormat.yMMMMd().format(widget.dateTransacted),
            ),
          ),
        ],
      ),
    );
  }
}

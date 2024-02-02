import 'package:flutter/material.dart';
import 'package:ostello/constants.dart';

class CustomFilledButton extends StatefulWidget {
  const CustomFilledButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.width,
    this.height,
    this.color,
    this.isLoading = false,
  });

  final double? width, height;
  final Widget child;
  final VoidCallback? onPressed;
  final Color? color;
  final bool isLoading;

  @override
  State<CustomFilledButton> createState() => _CustomFilledButtonState();
}

class _CustomFilledButtonState extends State<CustomFilledButton> {
  double opacity = 1;
  bool disabled = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const StadiumBorder(),
      clipBehavior: Clip.hardEdge,
      color: (widget.onPressed != null)
          ? (widget.color ?? customColor)
          : customColor.withOpacity(0.3),
      child: InkWell(
        splashColor: customColor.withOpacity(0.7),
        highlightColor: customColor.withOpacity(0.7),
        onTap: (widget.isLoading) ? null : widget.onPressed,
        child: Container(
          // margin: const EdgeInsets.all(10),
          height: widget.height ?? 50,
          alignment: Alignment.center,
          width: widget.width ?? double.infinity,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(5),
          //   color: widget.onPressed == null
          //       ? Colors.grey
          //       : kColorDark,
          // ),
          child: (widget.isLoading)
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 1,
                  ),
                )
              : widget.child,
        ),
      ),
    );
  }
}

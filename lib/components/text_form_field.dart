import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
    required this.hint,
    this.isPassword = false,
    required this.controller,
    this.validator,
    this.keyboardType,
    this.suffix,
    this.onTap,
    this.enabled = true,
    this.minLines,
    this.maxLines,
    this.onChanged,
  }) : super(key: key);
  final Widget? suffix;

  final String hint;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final VoidCallback? onTap;
  final bool enabled;
  final int? minLines, maxLines;
  final ValueChanged<String>? onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      controller: widget.controller,
      cursorColor: Colors.black,
      obscureText: widget.isPassword && !isVisible,
      textCapitalization: widget.isPassword
          ? TextCapitalization.none
          : TextCapitalization.sentences,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      minLines: widget.minLines,
      maxLines: widget.maxLines ?? widget.minLines ?? 1,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabled: widget.enabled,
        hintText: widget.hint,
        hintStyle: GoogleFonts.roboto(
          fontWeight: FontWeight.w600,
          color:
              widget.enabled ? Colors.grey.shade400 : const Color(0xffD8DADC),
        ),
        suffixIcon: (widget.isPassword)
            ? GestureDetector(
                onTap: () {
                  isVisible = !isVisible;
                  setState(() {});
                },
                child: Icon(
                  !isVisible
                      ? Icons.visibility_rounded
                      : Icons.visibility_off_rounded,
                ),
              )
            : widget.suffix,
        isCollapsed: true,
        contentPadding: const EdgeInsets.all(12),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffDCE2EF),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffDCE2EF),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

class HeaderWidget extends StatefulWidget {
  final String headerTitle;
  final TextStyle headerStyle;
  final Color backgroundColor;
  final Widget? suffixWidget;
  final bool? centerHeader;
  final double? headerHeight;

  const HeaderWidget(
      {super.key,
      required this.headerTitle,
      required this.backgroundColor,
      required this.headerStyle,
      this.suffixWidget,
      this.centerHeader,
      this.headerHeight});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.headerHeight ?? 60,
        width: screenWidth(context),
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), spreadRadius: 1, blurRadius: 3, offset: const Offset(0, 2))]),
        child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
                mainAxisAlignment: widget.centerHeader != null && widget.centerHeader == true ? MainAxisAlignment.center : MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.centerHeader != null && widget.centerHeader == true
                      ? Center(child: Text(widget.headerTitle, style: widget.headerStyle))
                      : Padding(padding: const EdgeInsets.only(left: 50), child: Text(widget.headerTitle, style: widget.headerStyle)),
                  widget.centerHeader != null && widget.centerHeader == true ? const SizedBox() : const Spacer(),
                  widget.suffixWidget ?? const SizedBox()
                ])));
  }
}

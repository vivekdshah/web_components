import 'package:flutter/material.dart';

screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

class HeaderWidget extends StatefulWidget {
  final String headerTitle;
  final TextStyle headerStyle;
  final Color backgroundColor;
  final Widget? suffixWidget;
  final Widget? prefixWidget;
  final bool? centerHeader;
  final double? headerHeight;

  const HeaderWidget(
      {super.key,
      required this.headerTitle,
      required this.backgroundColor,
      required this.headerStyle,
      this.suffixWidget,
      this.centerHeader,
      this.headerHeight,
      this.prefixWidget});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.headerHeight ?? 60,
        width: screenWidth(context),
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), spreadRadius: 1, blurRadius: 3, offset: const Offset(0, 2))]),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          widget.prefixWidget ?? const SizedBox(),
          widget.prefixWidget == null
              ? const SizedBox()
              : const SizedBox(
                  width: 15,
                ),
          Expanded(

              child: Text(widget.headerTitle,
                  maxLines: 1,
                  textAlign: widget.centerHeader != null && widget.centerHeader == true ? TextAlign.center : TextAlign.start,
                  overflow: widget.centerHeader != null && widget.centerHeader == true ? TextOverflow.ellipsis : null,
                  style: widget.headerStyle)),
          widget.centerHeader != null && widget.centerHeader == true ? const SizedBox() : const Spacer(),
          widget.suffixWidget ?? const SizedBox()
        ]));
  }
}

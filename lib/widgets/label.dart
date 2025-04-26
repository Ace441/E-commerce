import 'dart:math';

import 'package:flutter/material.dart';

class Label extends StatefulWidget {
  final EdgeInsets margin;
  final Widget child;
  final Color color;
  const Label({super.key,
    this.color=Colors.cyan,
    this.child= const Column(),
    this.margin=const EdgeInsets.all(0)
  });

  @override
  State<Label> createState() => _LabelState();
}

class _LabelState extends State<Label> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double sizeValue = min(size.height*0.3,size.width*0.3);
    return Container(
      margin:widget.margin,
      height: sizeValue*0.22,
      width: sizeValue*0.22,
      decoration: BoxDecoration(
          color:widget.color,
          shape: BoxShape.circle
      ),
      child:widget.child,
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

import 'label.dart';

class TopDeals extends StatefulWidget {
  final Container? description;
  final double transform;
  final AlignmentGeometry alignment;
  final Color color;
  final EdgeInsets margin;
  final bool showLabel;
  final double height;
  final double width;
  final String discount;
  final String image;
  const TopDeals({
    super.key,
    this.image = '',
    this.discount ="",
    this.height = 0,
    this.width = 0,
    this.showLabel = false,
    this.margin = const EdgeInsets.all(8.0),
    this.color = Colors.cyan,
    this.alignment = Alignment.bottomRight,
    this.transform=0,
    this.description
  });

  @override
  State<TopDeals> createState() => _TopDealsState();
}

class _TopDealsState extends State<TopDeals> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double sizeValue = min(size.height * 0.3, size.width * 0.3);
    return Column(
      children: [
        Stack(alignment: widget.alignment, children: [
          Container(
            margin: widget.margin,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(209, 209, 209, 1.0),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(-4, -4)),
                BoxShadow(
                    color: Color.fromRGBO(78, 78, 78, 0.0),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(4, 9)),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(255, 208, 204, 1.0),
            ),
            height: widget.height,
            width: widget.width,
            child:Transform.rotate(
              angle:widget.transform,
              child: Image(image: AssetImage(
                widget.image,
              ),fit: BoxFit.cover,
              ),
            ),
          ),
          widget.showLabel
              ? Label(
                  margin:EdgeInsets.only(bottom:size.height*0.01,right:size.width*0.01),
                  color: widget.color,
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      widget.discount,
                      style: TextStyle(
                          fontSize: size.height * 0.011,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          height: size.height * 0.0011),
                    ),
                  ),
                )
              : Row(
                  children: [
                    Label(
                      margin:EdgeInsets.only(bottom:size.height*0.01,),
                      color: widget.color,
                      child:
                        Container(
                          margin: EdgeInsets.only(top:size.height*0.002),
                          alignment:Alignment.center,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                            size:sizeValue*0.20,
                            weight:4,
                          ),
                        ),

                    ),
                    Label(
                      margin:EdgeInsets.only(bottom:size.height*0.01,right:size.width*0.022),
                      color: widget.color,

                        child: Container(
                          margin: EdgeInsets.only(top:size.height*0.002,left:size.width*0.003),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.redAccent,
                            size:sizeValue*0.18,
                          ),
                        ),

                    )
                  ],
                ),
        ]),
        Container(child: widget.description)
      ],
    );
  }
}

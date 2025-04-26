import 'package:ecomerce/widgets/top_deals.dart';
import 'package:flutter/material.dart';

class TrendingProducts extends StatefulWidget {
  const TrendingProducts({super.key});

  @override
  State<TrendingProducts> createState() => _TrendingProductsState();
}

class _TrendingProductsState extends State<TrendingProducts> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.03),
      width: size.width * 0.95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size.width * 0.03),
          boxShadow: [
            BoxShadow(
                offset: Offset(-4, -4),
                blurRadius: 4,
                color: Color.fromRGBO(181, 181, 181, 1.0)),
            BoxShadow(
                offset: Offset(4, 4),
                blurRadius: 4,
                color: Color.fromRGBO(232, 232, 232, 1.0)),
          ],
          color: Color.fromRGBO(255, 255, 255, 1.0)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopDeals(
                description:Container(
                    color: Colors.cyan,
                    height:size.height*0.1,
                    width:size.width*0.4,
                    child: Text("Description")),
                transform:-0.3,
                discount: "21%",
                color: Colors.white,
                height: size.height * 0.18,
                width: size.width * 0.4,
                image: 'media/images/JORDAN+SPIZIKE+LOW (1) 1.png',
              ),
              TopDeals(
                description:Container(
                    color: Colors.cyan,
                    height:size.height*0.1,
                    width:size.width*0.4,
                    child: Text("Description")),
                transform:-0.3,
                discount: '30%',
                color: Colors.white,
                height: size.height * 0.18,
                width: size.width * 0.4,
                image: 'media/images/JORDAN+SPIZIKE+LOW (2) 1.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopDeals(
                description:Container(
                    color: Colors.cyan,
                    height:size.height*0.1,
                    width:size.width*0.4,
                    child: Text("Description")),
                transform:-0.3,
                color: Colors.white,
                height: size.height * 0.18,
                width: size.width * 0.4,
                image: 'media/images/JORDAN+SPIZIKE+LOW 1.png',
              ),
              TopDeals(
                description:Container(
                    color: Colors.cyan,
                    height:size.height*0.1,
                    width:size.width*0.4,
                    child: Text("Description")),
                transform:-0.3,
                color: Colors.white,
                height: size.height * 0.18,
                width: size.width * 0.4,
                image: 'media/images/NIKE+AIR+MAX+PLUS (1) 1.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopDeals(
                description:Container(
                  color: Colors.cyan,
                    height:size.height*0.1,
                    width:size.width*0.4,
                    child: Text("Description")),
                transform:-0.3,
                discount: "21%",
                color: Colors.white,
                height: size.height * 0.18,
                width: size.width * 0.4,
                image: 'media/images/NIKE+AIR+MAX+PLUS (2) 1.png',
              ),
              TopDeals(
                description:Container(
                    color: Colors.cyan,
                    height:size.height*0.1,
                    width:size.width*0.4,
                    child: Text("Description")),
                transform:-0.3,
                discount: '30%',
                color: Colors.white,
                height: size.height * 0.18,
                width: size.width * 0.4,
                image: 'media/images/NIKE+AIR+MAX+PLUS 1.png',
              ),
            ],
          ),

        ],
      ),
    );
  }
}

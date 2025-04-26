import 'package:flutter/material.dart';

import '../widgets/price_filter.dart';
import '../widgets/top_deals.dart';
import '../widgets/trending_products.dart';
import '../widgets/user_info.dart';

class ProductPg extends StatelessWidget {
  const ProductPg({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(186, 17, 19, 1),
          toolbarHeight: 0,
        ),
        body: ListView(
            children: [
              Column(
                children: [
                  Stack(//alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(186, 17, 19, 1),
                                Color.fromRGBO(233, 14, 19, 1),
                              ]),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25))),
                          height: size.height * 0.4,
                          alignment: Alignment.center,
                        ),
                        Stack(alignment: Alignment.center, children: [
                          Container(
                            margin: EdgeInsets.only(top: size.height * 0.10),
                            height: size.height * 0.18,
                            width: size.width * 0.95,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 4),
                                    blurRadius: 4,
                                    color: Color.fromRGBO(0, 0, 0, 0.25098039215686274))
                              ],
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.white,
                            ),
                          ),
                          UserInfo()
                        ]),
                        Container(alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              top: size.height * 0.34, left: size.width * 0.025),
                          height: size.height * 0.16,
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(-4, -4),
                                    blurRadius: 70,
                                    color: Color.fromRGBO(0, 0, 0, 0.10)),
                                BoxShadow(
                                    offset: Offset(4, 4),
                                    blurRadius: 70,
                                    color: Color.fromRGBO(0, 0, 0, 0.10)),
                              ],
                              borderRadius: BorderRadius.circular(11),
                              color: Color.fromRGBO(255, 255, 255, 1.0)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: size.width * 0.017),
                                    child: Text(
                                      "Top Deals",
                                      style: TextStyle(
                                          color: Color.fromRGBO(180, 38, 32, 1.0),
                                          fontSize:size.height*0.017,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(children: [
                                    TopDeals(
                                      color:Color.fromRGBO(223, 16, 18, 1.0),
                                      showLabel:true,
                                      height:size.height*0.1,
                                      width:size.width*0.2,
                                      image: 'media/images/white & yellow.png',
                                      discount: "20% Off",
                                    ),
                                    TopDeals(
                                      color:Color.fromRGBO(223, 16, 18, 1.0),
                                      showLabel:true,
                                      height:size.height*0.1,
                                      width:size.width*0.2,
                                      image: 'media/images/yellow.png',
                                      discount: "30% Off",
                                    ),
                                    TopDeals(
                                      color:Color.fromRGBO(223, 16, 18, 1.0),
                                      showLabel:true,
                                      height:size.height*0.1,
                                      width:size.width*0.2,
                                      image: 'media/images/solestage-check-WaL1b9adklE-unsplash 1.png',
                                      discount: "15% Off",
                                    ),
                                    TopDeals(
                                      color:Color.fromRGBO(223, 16, 18, 1.0),
                                      showLabel:true,
                                      height:size.height*0.1,
                                      width:size.width*0.2,
                                      image: 'media/images/red nike.png',
                                      discount: "50% Off",
                                    ),
                                    TopDeals(
                                      color:Color.fromRGBO(223, 16, 18, 1.0),
                                      showLabel:true,
                                      height:size.height*0.1,
                                      width:size.width*0.2,
                                      image: 'media/images/red & white.png',
                                      discount: "12% Off",
                                    ),
                                  ]))
                            ],
                          ),
                        ),
                      ]),
                  PriceFilter(),
                  TrendingProducts()
                ],
              ),

        ]));
  }
}

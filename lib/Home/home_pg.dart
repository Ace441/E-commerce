import 'package:flutter/material.dart';

class HomePg extends StatefulWidget {
  const HomePg({super.key});

  @override
  State<HomePg> createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
          children: [

        Image(
          image: AssetImage("media/images/resized.jpg"),
          fit: BoxFit.cover,
        height: size.height*1,
          width: size.width*1,
        ),
        Column(
          children: [
            Container(
              height: size.height * 0.65,
              width: size.width * 1,
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors:
                    [
                      Color.fromRGBO(250, 86, 86, 160,),
                      Color.fromRGBO(0, 0, 0, 100),
                    ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.60,1],
                    ),
              ),
            ),
            Container(
              height: size.height * 0.35,
              width: size.width * 1,
              decoration: BoxDecoration(
                gradient:
                LinearGradient(colors:
                [
                  Color.fromRGBO(0, 0, 0, 100),
                  Color.fromRGBO(0, 0, 0, 10),
                ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0,0.7],
                ),
              ),
              child: Column(
                children: [
                  Text("Step Into Style",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:size.height*0.041,
                      fontWeight: FontWeight.w800),
                  ),
                  Text("-Shop the Perfect Pair!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:size.height*0.021,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),
                  ),
                  Expanded(child:Container()),
                  Text("Discover the latest trends, premium",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:size.height*0.0151,
                      fontWeight: FontWeight.w400,),
                  ),
                  Text("brands and exclusive deals on footwear.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:size.height*0.0151,
                      fontWeight: FontWeight.w400,),
                  ),
                  Expanded(child:Container()),
                  Container(
                    height: size.height*0.06,
                    width: size.width*0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, "product_pg");
                    },
                      child: Container(
                        alignment: Alignment.center,
                        height: size.height*0.06,
                        width: size.width*0.7,
                        child: Text("Get Started",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize:size.height*0.0251,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child:Container()),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}

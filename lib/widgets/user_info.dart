import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height*0.1,
                  width: size.width*0.18,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    shape: BoxShape.circle,
                    border:Border(
                      top: BorderSide(color: Colors.redAccent,width: 3),
                      bottom: BorderSide(color: Colors.redAccent,width: 3),
                      right: BorderSide(color: Colors.redAccent,width: 3),
                      left: BorderSide(color: Colors.redAccent,width: 3),
                    )
                  ),
                ),
                Padding(
                  padding:EdgeInsets.only(left:size.width*0.05),
                  child: Column(
                    children: [
                    Text("Ermiyas Tilahun",style:TextStyle(fontSize:size.height*0.02,fontWeight: FontWeight.w600,color: Color.fromRGBO(217, 47, 47, 1)),),
                    Text("Good Morning",style:TextStyle(fontSize:size.height*0.017,fontWeight: FontWeight.w600,color: Color.fromRGBO(60, 71, 97, 1)),),
                  ],),
                ),
                Expanded(child: Container()),
                Container(
                  height: size.height*0.1,
                  width: size.width*0.15,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 1),
                      shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height*0.01,),
          Padding(
            padding:EdgeInsets.symmetric(horizontal:size.width*0.05),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height*0.05,
                  width: size.width*0.77,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                      color: Color.fromRGBO(253, 215, 212, 1)
                  ),
                ),
                SizedBox(
                  height:size.height*0.04,
                  width: size.width*0.08,
                    child: Image(image: AssetImage("media/images/filter icon.png"),fit:BoxFit.fitWidth,)
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/*Stack(
                alignment: Alignment.center,
              children: [
                Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors:
                  [
                    Color.fromRGBO(186, 17, 19, 1),
                    Color.fromRGBO(233, 14, 19, 1),
                  ]
                  ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                ),
                height: size.height*0.40,
                ),
                Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: size.height*0.18,
                        width: size.width*0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white,),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children:
                          [
                            Row(
                              children: [
                              Container(
                                height:size.height*0.10,
                                width: size.width*0.15,
                                decoration: BoxDecoration(
                                    border: Border(
                                      top:BorderSide(color: Color.fromRGBO(179, 12, 14, 1),width:3),
                                      bottom:BorderSide(color: Color.fromRGBO(179, 12, 14, 1),width:3),
                                      left:BorderSide(color: Color.fromRGBO(179, 12, 14, 1),width:3),
                                      right:BorderSide(color: Color.fromRGBO(179, 12, 14, 1),width:3),
                                    ),
                                    color: Color.fromRGBO(230, 234, 237, 1.0),
                                    shape: BoxShape.circle
                                ),

                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Ermiyas Tilahun",style:TextStyle(fontSize:18,fontWeight: FontWeight.w600,color: Color.fromRGBO(217, 47, 47, 1)),),
                                    Text("Good Morning",style:TextStyle(fontSize:16,fontWeight: FontWeight.w600,color: Color.fromRGBO(60, 71, 97, 1)),),
                                  ],
                                ),
                              ),
                              Expanded(child: Container()),
                              Container(
                                height:size.height*0.5,
                                width: size.width*0.10,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(230, 234, 237, 1.0),
                                    shape: BoxShape.circle
                                ),

                              ),
                            ],),
                            Row(
                              children: [
                                Container(
                                  height: size.height*0.05,
                                  width: size.width*0.8,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(253, 215, 212, 1)
                                  ),
                                )
                              ],),
                          ],
                        ),
                      ),

                    ]
                ),
              ]
            )*/
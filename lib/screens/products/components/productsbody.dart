import 'package:flutter/material.dart';
import 'package:newproject/screens/sample/sample.dart';
import 'package:newproject/screens/cart/cart.dart';

class ProductBody extends StatefulWidget {
   ProductBody({Key? key}) : super(key: key);

  @override
  State<ProductBody> createState() => _ProductBodyState();
}

class _ProductBodyState extends State<ProductBody> {
  List<Map<String,dynamic>> data1=[
    {"name":"Green Tea Fresh Skin","type":"Skin toner,200ml","price":16.05,
  "image":"assets/greentea.png","s":0,"rating":"4.5",
      "desc":"oily type.A fresh toner for hydration and nourishment made using ecofriendly jeju tea seeds. Nunc pharetra sagittis nisl, vel mollis urna luctus nec. Sed finibus lacus nisl, sed mattis erat commodo et. Super comfortable great one fun using "},
    {"name":"SS Sunscreen","type":"Sunscreen,150ml","price":13.02,
      "image":"assets/UVSkrinSSSiliconeSunscreenGelSPF50_-01_1400x.jpg","s":0,"rating":"4.5",
      "desc":"A  non greasy sunscreen made from patchouli and ceramides for skin nourishment. Nunc pharetra sagittis nisl, vel mollis urna luctus nec. Sed finibus lacus nisl, sed mattis erat commodo et. Super comfortable great one fun using "},
    {"name":"WOW Skin lotion","type":"Skin lotion,100ml","price":15.16,"rating":"4.5",
      "image":"assets/wowlotion.jpg","s":0,"rating":"4.5",
      "desc":"A skin lotion for hydration and nourishment of skin made using aloe vera. Nunc pharetra sagittis nisl, vel mollis urna luctus nec. Sed finibus lacus nisl, sed mattis erat commodo et. Super comfortable great one fun using "},
    {"name":"Neutrogena face wash","type":"Face wash,250ml","price":18.56,
    "image":"assets/neutro.jpg","s":0,"rating":"4.5",
      "desc":"For all skin type.A facisal cleanser for acne treatment and clearing of pores. Nunc pharetra sagittis nisl, vel mollis urna luctus nec. Sed finibus lacus nisl, sed mattis erat commodo et. Super comfortable great one fun using "},
    {"name":"Garnier face mask","type":"Face mask,250ml","price":11.16,
    "image":"assets/garnier_men_acnofight_anti_pimple_face_wash_50_gm_2_4.jpg","s":0,"rating":"4.5",
      "desc":"A face mask  for hydration and skin correction. Nunc pharetra sagittis nisl, vel mollis urna luctus nec. Sed finibus lacus nisl, sed mattis erat commodo et. Super comfortable great one fun using "},
    {"name":"Banjaras Multani mitti","type":"Face pack,300ml","price":12.35,
      "image":"assets/facepack.jpg","s":0,"rating":"4.5",
      "desc":"A face pack to help bring a glow to your face. Will also remove tan and blackheads. Nunc pharetra sagittis nisl, vel mollis urna luctus nec. Sed finibus lacus nisl, sed mattis erat commodo et. Super comfortable great one fun using "},

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(


      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(
                    height: 45,
                    width: 45,
                    alignment: Alignment.center,

                    decoration: BoxDecoration(
                        color: Color(0xfff7f7f5),

                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.list,color: Colors.black,

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Cart()));
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Color(0xffd7c09a),

                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(Icons.shopping_cart,color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Text("Welcome Back",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,),
              child: Row(
                children: [
                  Text("Rajendar Prasad",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Icon(Icons.waving_hand_outlined)
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 20),

              child: Row(
                children: [

                  Container(
                    width: 330,

                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius:BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 6.0



                        )
                      ],
                    ),
                    child: TextFormField(

                      decoration: InputDecoration(prefixIcon:Icon(Icons.search,color: Colors.black,),
                          suffixIcon: Icon(Icons.sort,color: Colors.black,), ),),
                  )
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                clipBehavior: Clip.none,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) => InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Sample(data: data1[index])));
                  },
                child: Container(
                  // width: 450,
                  height: 130,
                  //padding:Ed,
                  margin: EdgeInsets.only(top: 20),

                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 6.0, // soften the shadow
                        // spreadRadius: 15.0, //extend the shadow
                        // offset: Offset(
                        //   5.0, // Move to right 5  horizontally
                        //   5.0, // Move to bottom 5 Vertically
                        // ),
                      )
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        width: 150,
                        height: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(data1[index]["image"]),
                          ),

                        )
                        ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(data1[index]["name"],textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          SizedBox(height: 20,),
                          Text("\$"+data1[index]["price"].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
                itemCount: data1.length,
              )

            ),
          ],
        ),
      ),
    );
  }
}

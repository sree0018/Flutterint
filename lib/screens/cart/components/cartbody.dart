import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/screens/cart/cart.dart';
import 'package:newproject/screens/repository/repository.dart';
class CartBody extends StatefulWidget {
  CartBody({Key? key}) : super(key: key);

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  int inc(index) {
       cartdata[index]["s"]=cartdata[index]["s"]+1;
    return cartdata[index]["s"];
  }

  int dec(index) {
    cartdata[index]["s"]--;
    if(cartdata[index]["s"]==-1)
    {
      cartdata[index]["s"]=0;
    }
    return cartdata[index]["s"];
  }
  double tot=0,subtot=0,tax=10.00;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    total();
  }
  void total(){
    tot=0;
    subtot=0;
    tax=10;
    cartdata.forEach((element) {
      subtot=subtot+ (element["price"]*element["s"]);

    });
     print(subtot);
    if(subtot==0.0){
      tax=0;
    }
    setState(() {

      tot=subtot+tax;

    });

    print("sub: $subtot");
    print("total: $tot");
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
             child:SingleChildScrollView(
               child: Column(
                 children: [
                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         InkWell(
                           onTap: (){
                             Navigator.pop(context);
                           },
                           child: Container( padding: EdgeInsets.only(left: 5),
                               height: 45,
                               width: 45,
                               alignment: Alignment.center,
                               decoration: BoxDecoration(
                                   color: Color(0xfff7f7f5),

                                   borderRadius: BorderRadius.circular(100)),
                               child: Icon(
                                 Icons.arrow_back_ios,color: Colors.black,
                               ),
                           ),
                         ),
                         Text("My Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                         InkWell(
                           onTap: ()
                           {
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
                         )
                       ],
                     ),
                   ),
                    SingleChildScrollView(
                      child: Container(

                        height: 525,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: cartdata.length,
                            itemBuilder: (context, index) {

                         return
                           Container(
                               height:145 ,
                               margin: EdgeInsets.only(top: 15),
                               decoration: BoxDecoration(color: Colors.white,
                                   borderRadius: BorderRadius.circular(20),
                                   boxShadow: [
                                     BoxShadow(
                                       color: Colors.grey,
                                       blurRadius: 6.0,)]),
                             child: Dismissible(
                             onDismissed: (dir){
                               cartdata.removeAt(index);
                               setState(() {
                                 total();
                               });

                               },
                               background: Icon(Icons.delete_outline_sharp),
                               key: UniqueKey(),
                               child: Container(
                                width: 350,
                                 height: 130,
                                 child: Row(
                                   children: [
                                     Image.asset(cartdata[index]["image"],width: 150,height: 130,),
                                     Column(
                                       mainAxisSize: MainAxisSize.min,
                                       children: [
                                     Row(
                                       children: [
                                         //SizedBox(width: 40,),
                                         Container(

                                           alignment: Alignment.center,
                                           padding: EdgeInsets.only(left: 40),
                                           child: Text(cartdata[index]["name"],style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                                         ),
                                       ],
                                     ),
                                     SizedBox(width: 40,),
                                     Container(
                                       padding: EdgeInsets.only(left: 40),
                                       margin: EdgeInsets.only(bottom: 10),
                                       child: Text(cartdata[index]["type"],style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                                     ),
                                         Row(

                                           //mainAxisSize: MainAxisSize.min,
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Container(
                                                  alignment: Alignment.center,
                                                 padding: EdgeInsets.only(left: 40),
                                                 child: Row(
                                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                                   children: [
                                                     Text("\$"+cartdata[index]["price"].toString(),style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
                                                     SizedBox(width: 25,),
                                                     Text("Qty: "+cartdata[index]["s"].toString(),style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)
                                                   ],
                                                 )),



                                           ],
                                         ),
                                         ]
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           );
                        }),
                      ),
                    ),

                   Container(padding: EdgeInsets.only(left: 25,right: 25,top: 20),
                     height: 175,

                     decoration: BoxDecoration(color: Colors.white,
                         borderRadius: BorderRadius.circular(20),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey,
                             blurRadius: 6.0,)]),
                     child: Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               "Sub total",
                               style: TextStyle(
                                   fontSize: 17, fontWeight: FontWeight.w500),
                             ),
                             //SizedBox(width: 217,),

                             Text("\$"+subtot.toStringAsFixed(2),
                               style: TextStyle(fontSize: 17),
                             )
                           ],
                         ),
                         SizedBox(
                           height: 15,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               "Taxes & Fees",
                               style: TextStyle(
                                   fontSize: 17, fontWeight: FontWeight.w500),
                             ),
                             //SizedBox(width: 185,),
                             Text(
                               tax.toString(),
                               style: TextStyle(fontSize: 17),
                             )
                           ],
                         ),
                         SizedBox(
                           height: 15,
                         ),
                        /* Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               "Delivery Fee",
                               style: TextStyle(
                                   fontSize: 17, fontWeight: FontWeight.w500),
                             ),
                             // SizedBox(width: 204,),
                             Text(
                               "\$5.00",
                               style: TextStyle(fontSize: 17),
                             )
                           ],
                         )*/
                         SizedBox(
                           height: 13,
                         ),
                         Container(
                           decoration: BoxDecoration(color: Colors.black12),
                           height: 2,
                         ),
                         SizedBox(
                           height: 13,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               "Total",
                               style: TextStyle(
                                   fontSize: 20, fontWeight: FontWeight.bold),
                             ),
                             //SizedBox(width: 232,),
                             Text("\$"+(tot).toStringAsFixed(2),
                               style: TextStyle(
                                   fontSize: 20, fontWeight: FontWeight.bold),
                             )
                           ],
                         ),
                         /*SizedBox(height: 30,),
                  SizedBox(height: 45, width: 335,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.black87,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                        onPressed: (){//Navigator.push(context, MaterialPageRoute(builder: (context) => AddCart()));
                        }, child: Text("Checkout",style: TextStyle(fontSize: 17),)),
                  )*/
                       ],
                     ),
                   ),


                    ]
                   ),
               ),
             ),
    ) ;
  }

}

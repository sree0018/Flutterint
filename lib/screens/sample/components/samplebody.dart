import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/main.dart';
import 'package:newproject/screens/cart/cart.dart';
import 'package:newproject/screens/repository/repository.dart';

class SampleBody extends StatefulWidget {
   SampleBody({Key? key, required this.data}) : super(key: key);
   Map<String,dynamic> data;

  @override
  State<SampleBody> createState() => _SampleBodyState();
}

class _SampleBodyState extends State<SampleBody> {
  //int s = 0;

  int inc() {
    widget.data["s"]++;
    return widget.data["s"];
  }

  int dec() {
    widget.data["s"]--;
    if(widget.data["s"]==-1)
      {
        widget.data["s"]=0;
      }
    return widget.data["s"];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //SizedBox(width: 25),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 5),
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
            Image.asset(widget.data["image"],
            width: 394,height: 394,),
            SizedBox(
              height: 30,
            ),
            Container(
                child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  widget.data["name"],
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 20,
                child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Row(
                  children: [
                    Text(
                      widget.data["type"],
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(width: 150,),
                Text("\$"+widget.data["price"].toString(),style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text("Rating: "+widget.data["rating"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(width: 5,),
                    Icon(Icons.star,size: 15,)
                  ],
                )),
            Container(
              width: 350,
              padding: EdgeInsets.only(left: 15),
              child: Text(
                widget.data["desc"],
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(


              padding: EdgeInsets.only(left: 15,right: 15 ),
              height: 100,
              // width: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(


                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {});
                                  dec();
                                },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black
              ),
                                child: Text(
                                  "-",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                                )),
                          ),
                          Expanded(
                              child: Text(
                                widget.data["s"].toString(),
                            textAlign: TextAlign.center,
                          )),
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {});
                                  inc();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black
                                ),
                                child: Text(
                                  "+",
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(width: 75,),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        ElevatedButton(
                            onPressed: () {
                              var result = cartdata.where((element) => element.containsValue(widget.data["name"]));
                              if(result.isEmpty){
                                cartdata.add(widget.data);
                              }

                              //Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                            ),
                            child: Text(
                              "+ Add to Cart",
                              style: TextStyle(fontSize: 15),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:waiterorder/Model/product.dart';
import 'package:waiterorder/Utll/const.dart';

class productlist extends StatefulWidget {
  const productlist({Key? key}) : super(key: key);

  @override
  _productlistState createState() => _productlistState();
}

class _productlistState extends State<productlist> {
  List<product>productlist=[product("1","item1","20","220"),product("1","item2","25","0"),product("1","item3","10","0")];


  @override
  Widget build(BuildContext context) {

    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:backgroundcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical:10),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:5.0,horizontal:0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Product List",
                            style:headingstyle),
                      ),

                    ],
                  ),
                ),
                SizedBox(height:10,),

                Container(
                  decoration:containerdecoration,
                  width:size.width*0.9,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        border: InputBorder.none,
                        fillColor:Colors.white,
                        filled: true,
                        hintText: "Search Products"),
                  ),
                ),
                //part one add customer


                divider,
                ListView.builder
                  (
                    shrinkWrap:true,
                    physics: const NeverScrollableScrollPhysics(),

                    itemCount: productlist.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(vertical:10.0,horizontal:0),

                        decoration:containerdecoration,
                        child: Column(
                          children: [
                            new ListTile(
                                onTap:(){
                                  // Navigator.push(
                                  //   context,
                                  //   new MaterialPageRoute(builder: (context) => productlist()),
                                  // );

                                  },
// isThreeLine:InkWell(
//   onTap:(){},
//   child:,
// ),
                                subtitle:Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text("\$${productlist[index].price}",style:itemsprice,),
                                ) ,
                                trailing:Container(
                                  width:MediaQuery.of(context).size.width*0.25,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:Colors.orangeAccent),
                                  child: Row(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q=int.parse(productlist[index].quantity.toString());

                                              if(q>0)
                                                {
                                                  q--;
                                                  productlist[index].quantity=q.toString();
                                                }

                                            });

                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 3),
                                        padding:
                                        EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(3),
                                            color: Colors.white),
                                        child: Text(
                                          productlist[index].quantity!,
                                          style: TextStyle(color: Colors.black, fontSize: 16),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q=int.parse(productlist[index].quantity.toString());
                                              q++;
                                              productlist[index].quantity=q.toString();
                                            });
                                          },
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                    ],
                                  ),
                                ),
                                title:Text(productlist[index].name.toString())),
                            Container(
                              height:1,color:Colors.black12,
                            )
                          ],
                        ),
                      );
                    }
                )






              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:waiterorder/Utll/const.dart';
class table_detail extends StatefulWidget {
  const table_detail({Key? key}) : super(key: key);

  @override
  _table_detailState createState() => _table_detailState();
}

class _table_detailState extends State<table_detail> {
  @override
  Widget build(BuildContext context) {

    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:backgroundcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical:5.0,horizontal:15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                              "Table 132",
                              style:headingstyle),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: Container(
                          width: size.width * 0.3,
                          height: 40,
                          child: ElevatedButton(
                              child: Text('Open Now'),
                              onPressed: () {
                                // if(fullname.text.toString()!='')
                                // {
                                //   setState(() {
                                //     customerList.add(fullname.text.toString());
                                //     fullname.text="";
                                //   });

                                // }
                                // else{
                                //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                //     content: Text("Fill Credentials Please!"),
                                //   ));
                                // }



                              },

                              style: ElevatedButton.styleFrom(
                                primary: Colors.green, // background
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ))),
                    ),
                  ],
                ),
              ),
              //part one add customer
              divider,
              Container(
                width:size.width*0.9,
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                decoration:containerdecoration,
                child:Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Customers Details",style:heading2style,),
                    ),
                    // Container(


                  ],
                ),
              ),
              divider,
              Container(
                width:size.width*0.9,
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                decoration:containerdecoration,
                child:Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Customers List",style:heading2style,),
                    ),
                    // Container(
                    //
                    //   child: ListView.builder(
                    //     shrinkWrap: true,
                    //     itemCount:customerList.length,
                    //     itemBuilder: (context, index) {
                    //       return Container(
                    //         margin:EdgeInsets.symmetric(horizontal: 20,vertical:10),
                    //         color:backgroundcolor,
                    //         child: ListTile(
                    //
                    //           title: Text(customerList[index]),
                    //           trailing:GestureDetector(
                    //               onTap: (){
                    //                 //
                    //                 // setState(() {
                    //                 //   customerList.removeAt(index);
                    //                 // });
                    //               },
                    //               child: Icon(Icons.delete,color:Colors.red,)),
                    //         ),
                    //       );
                    //     },),
                    // )


                  ],
                ),
              ),
              //part two add products

            ],
          ),
        ),
      ),
    );
  }
}

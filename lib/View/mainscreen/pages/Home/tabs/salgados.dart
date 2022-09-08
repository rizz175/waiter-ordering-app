import 'package:flutter/material.dart';

import '../../../../../Model/category.dart';
import '../../../../../Utll/const.dart';
import '../Productlist.dart';

class salgados extends StatefulWidget {
  const salgados({Key? key}) : super(key: key);

  @override
  _salgadosState createState() => _salgadosState();
}

class _salgadosState extends State<salgados> {
  var customerList = ["asdsa", "asdsad", "sds", "asdsa", "asdsad", "sds"];

  List<category> FRITOS = [
    category('QUIBE LANCHE', '10712', '32', '4'),
    category('RISOLES', '10714', '32', '4'),
    category('UNHA DE CARANGUEJO', '10710', '32', '4'),
    category('COXINHA LANCHE', '10728', '32', '4'),
    category('BOLINHO DE BACALHAU LANCHE', '10716', '32', '4'),
    category('CANUDINHO PORCAO 06', '10721', '32', '4'),
  ];

  List<category> sanduiches = [
    category('SANDUICHE FRANGO', '10725', '32', '4'),
    category('SANDUICHE CAMARAO', '10726', '32', '4'),
    category('SANDUICHE ATUM', '10727', '32', '4'),
    category('SANDUICHE BACALHAU', '10728', '32', '4'),
    category('SANDUICHE DE PAO INTEGRAL FARANGO', '12847', '32', '4'),
    category('SANDUICHE DE PAO INTEGRAL CAMARAO', '12849', '32', '4'),
    category('SANDUICHE DE PAO INTEGRAL ATUM', '12848', '32', '4'),
    category('SANDUICHE DE PAO INTEGRAL BACAL HAU', '12850', '32', '4'),
  ];
  List<category> embalados = [
    category('PAO DE BATATA QUIEJO PRATO 16', '10739', '32', '4'),
    category('SALGADO CIQUETEL PRATO 50UN', '10743', '32', '4'),
    category('SALGADO CIQUETEL PRATO 23UN', '10742', '32', '4'),
    category('CANDUDIINHO PRATO 23 SEM RECHEIO', '12224', '32', '4'),
    category('CANDUDIINHO PRATO 23 FRANGO', '12346', '32', '4'),
    category('CANDUDIINHO PRATO 23 QUEIJO', '12345', '32', '4'),
    category('CANDUDIINHO PRATO 23 CAMARAO', '12347', '32', '4'),
  ];

  List<category> fORNO = [
    category('TRANCA BACALHAU FATIA', '10805', '32', '4'),
    category('TRANCA FRANGOFATIA', '10799', '32', '4'),
    category('TRANCA MORTADELA FATIA', '10801', '32', '4'),
    category('TRANCA TOMATE SECO FATIA', '10803', '32', '4'),
    category('PAO DE BATATA FRANGO LANCHE', '10734', '32', '4'),
    category('PAO DE BATATA CAMARAO LANCHE', '10735', '32', '4'),
    category('PAO DE BATATA QUEUO LANCHE', '10733', '32', '4'),
    category('PAO DE BATATA LANCHE S/RECHEIO', '10797', '32', '4'),
    category('EMPADA CAMRAO LANCHE', '10753', '32', '4'),
    category('EMPADA FARANGO LANCHE', '10755', '32', '4'),
    category('EMPADA QUEIJO LANCHE', '10751', '32', '4'),
    category('EMPADA BACALHAU', '10757', '32', '4'),
    category('ESFIRRA CARNE', '10808', '32', '4'),
    category('CROISSANT', '10806', '32', '4'),
    category('PAO DE ROSAS (FATIA)', '10792', '32', '4'),
    category('PAO DE QIJEUJO', '12846', '32', '4'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpansionTile(
              title: Text(
                'FRITOS',
                style: heading4style,
              ),
              children: <Widget>[
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: FRITOS.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 0),
                        decoration: containerdecoration,
                        child: Column(
                          children: [
                            new ListTile(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   new MaterialPageRoute(builder: (context) => productlist()),
                                  // );
                                },
// isThreeLine:InkWell(
//   onTap:(){},
//   child:,
// ),
                                subtitle: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    "\$${ FRITOS[index].price}",
                                    style: itemsprice,
                                  ),
                                ),
                                trailing: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orangeAccent),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q = int.parse(
                                                  FRITOS[index]
                                                      .quanitity
                                                      .toString());

                                              if (q > 0) {
                                                q--;
                                                FRITOS[index].quanitity =
                                                    q.toString();
                                              }
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3, vertical: 2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.white),
                                        child: Text(
                                          FRITOS[index].quanitity!,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q = int.parse(
                                                  FRITOS[index]
                                                      .quanitity
                                                      .toString());
                                              q++;
                                              FRITOS[index].quanitity !=
                                                  q.toString();
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
                                title:
                                    Text( FRITOS[index].title.toString())),
                            Container(
                              height: 1,
                              color: Colors.black12,
                            )
                          ],
                        ),
                      );
                    })
              ]),
          ExpansionTile(
              title: Text(
                'FORNO',
                style: heading4style,
              ),
              children: <Widget>[
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: fORNO.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 0),
                        decoration: containerdecoration,
                        child: Column(
                          children: [
                            new ListTile(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   new MaterialPageRoute(builder: (context) => productlist()),
                                  // );
                                },
// isThreeLine:InkWell(
//   onTap:(){},
//   child:,
// ),
                                subtitle: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    "\$${fORNO[index].price}",
                                    style: itemsprice,
                                  ),
                                ),
                                trailing: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orangeAccent),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q = int.parse(fORNO[index]
                                                  .quanitity
                                                  .toString());

                                              if (q > 0) {
                                                q--;
                                                fORNO[index].quanitity =
                                                    q.toString();
                                              }
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3, vertical: 2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.white),
                                        child: Text(
                                          fORNO[index].quanitity!,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q = int.parse(fORNO[index]
                                                  .quanitity
                                                  .toString());
                                              q++;
                                              fORNO[index].quanitity !=
                                                  q.toString();
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
                                title: Text(fORNO[index].title.toString())),
                            Container(
                              height: 1,
                              color: Colors.black12,
                            )
                          ],
                        ),
                      );
                    })
              ]),
          ExpansionTile(
              title: Text(
                'SANDUICHES',
                style: heading4style,
              ),
              children: <Widget>[
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: sanduiches.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 0),
                        decoration: containerdecoration,
                        child: Column(
                          children: [
                            new ListTile(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   new MaterialPageRoute(builder: (context) => productlist()),
                                  // );
                                },
// isThreeLine:InkWell(
//   onTap:(){},
//   child:,
// ),
                                subtitle: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    "\$${sanduiches[index].price}",
                                    style: itemsprice,
                                  ),
                                ),
                                trailing: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orangeAccent),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q = int.parse(
                                                  sanduiches[index]
                                                      .quanitity
                                                      .toString());

                                              if (q > 0) {
                                                q--;
                                                sanduiches[index].quanitity =
                                                    q.toString();
                                              }
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3, vertical: 2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.white),
                                        child: Text(
                                          sanduiches[index].quanitity!,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q = int.parse(
                                                  sanduiches[index]
                                                      .quanitity
                                                      .toString());
                                              q++;
                                              sanduiches[index].quanitity !=
                                                  q.toString();
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
                                title:
                                    Text(sanduiches[index].title.toString())),
                            Container(
                              height: 1,
                              color: Colors.black12,
                            )
                          ],
                        ),
                      );
                    })
              ]),
          ExpansionTile(
              title: Text(
                'EMBALADOS',
                style: heading4style,
              ),
              children: <Widget>[
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: embalados.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 0),
                        decoration: containerdecoration,
                        child: Column(
                          children: [
                            new ListTile(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   new MaterialPageRoute(builder: (context) => productlist()),
                                  // );
                                },
// isThreeLine:InkWell(
//   onTap:(){},
//   child:,
// ),
                                subtitle: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    "\$${embalados[index].price}",
                                    style: itemsprice,
                                  ),
                                ),
                                trailing: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orangeAccent),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q = int.parse(embalados[index]
                                                  .quanitity
                                                  .toString());

                                              if (q > 0) {
                                                q--;
                                                embalados[index].quanitity =
                                                    q.toString();
                                              }
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3, vertical: 2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.white),
                                        child: Text(
                                          embalados[index].quanitity!,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              int q = int.parse(embalados[index]
                                                  .quanitity
                                                  .toString());
                                              q++;
                                              embalados[index].quanitity !=
                                                  q.toString();
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
                                title: Text(embalados[index].title.toString())),
                            Container(
                              height: 1,
                              color: Colors.black12,
                            )
                          ],
                        ),
                      );
                    })
              ]),
        ],
      ),
    );
  }
}

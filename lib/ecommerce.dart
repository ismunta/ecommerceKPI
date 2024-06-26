import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
//import 'package:contunderstand/pricepoints.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

// void main(){
//    runApp(EcommerceKpi(pricePoint));
// }
class EcommerceKpi extends StatelessWidget {
  //final List<PricePoints> points;

  EcommerceKpi(
      // this.points,
      {super.key});

  //bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          color: Color(0xf2050333),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(10),
                                  //color: Colors.black,
                                  child: Container(
                                    width: 400,
                                    height: 650,
                                    color: const Color(0xe60e1248),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Total sales",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                          ),
                                          const Divider(
                                            height: 40,
                                            thickness: 0.01,
                                          ),
                                          const FittedBox(
                                            fit: BoxFit.contain,
                                            child: const Row(
                                              children: [
                                                Text(
                                                  "\$",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  '10,00000000',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 65),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Text(
                                            "Today",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Row(
                                            children: [
                                              Icon(Icons.arrow_drop_up,
                                                  color: Colors.green),
                                              Text(
                                                "\$229",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "vs same day last week",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                          const Divider(
                                            height: 40,
                                            thickness: 0.01,
                                          ),
                                          const Text(
                                            "Sales volume",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                          ),
                                          Container(
                                            //color: Colors.blueGrey[900],
                                            width: 400,
                                            height: 350,
                                            child: _LineChart(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 400,
                                    height: 200,
                                    color: const Color(0xe60e1248),
                                    child: const Padding(
                                      padding: EdgeInsets.only(bottom: 64.0,left: 8,right: 8),
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sales by Location",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "United States",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                                SizedBox(
                                                  width: 220,
                                                ),
                                                Text(
                                                  "\$15.1k",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                )
                                              ],
                                            ),
                                            Divider(thickness: 0.2),
                                            Row(
                                              children: [
                                                Text(
                                                  "Canada",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                                SizedBox(
                                                  width: 260,
                                                ),
                                                Text(
                                                  "\$3.67k",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 400,
                                    height: 860,
                                    color: Color(0xe60e1248),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Orders",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                          ),
                                          const Divider(
                                            height: 30,
                                            thickness: 0.01,
                                          ),
                                          const FittedBox(
                                            child: Text(
                                              "43",
                                              style: TextStyle(
                                                  fontSize: 65,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          const Text(
                                            "Today",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          const Row(
                                            children: [
                                              Icon(Icons.arrow_drop_up,
                                                  color: Colors.green),
                                              Text(
                                                "8",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.green),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Vs same day last week",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          const Divider(
                                            height: 40,
                                            thickness: 0.01,
                                          ),
                                          const Text(
                                            "Order Volume",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                          ),
                                          Container(
                                            //color: Colors.blueGrey[900],
                                            width: 400,
                                            height: 300,
                                            child: _LineChart(),
                                          ),
                                          const Divider(
                                            height: 24,
                                            thickness: 0.01,
                                          ),
                                          const Text(
                                            "Orders by Channel",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                          ),
                                          const Divider(
                                            height: 21,
                                            thickness: 0.01,
                                          ),
                                          const Column(
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Market place",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18),
                                                    ),
                                                    Text(
                                                      "123",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22),
                                                    ),
                                                  ],
                                                ),
                                              LinearProgressIndicator(
                                                value: 0.95,
                                                // 95% progress
                                                //backgroundColor: Colors.grey[300],
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(Colors.green),
                                                minHeight:
                                                    10.0,// Minimum height of the line
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          const Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Shop",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18),
                                                  ),
                                                  Text(
                                                    "102",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 22),
                                                  ),
                                                ],
                                              ),
                                              LinearProgressIndicator(
                                                value: 0.75,
                                                // 95% progress
                                                //backgroundColor: Colors.grey[300],
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(Colors.green),
                                                minHeight:
                                                    10.0, // Minimum height of the line
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          const Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Store",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18),
                                                  ),
                                                  Text(
                                                    "99",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 22),
                                                  ),
                                                ],
                                              ),
                                              LinearProgressIndicator(
                                                value: 0.7,
                                                // 95% progress
                                                //backgroundColor: Colors.grey[300],
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(Colors.green),
                                                minHeight:
                                                    10.0, // Minimum height of the line
                                              ),
                                            ],
                                          ),
                                          //CircularProgressIndicator(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 400,
                                    height: 550,
                                    color: Color(0xe60e1248),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Net Profit",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                          ),
                                          Divider(
                                            height: 30,
                                            thickness: 0.01,
                                          ),
                                          FittedBox(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "\$",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "11.27k",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 65,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "This month",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.arrow_drop_up,
                                                  color: Colors.green),
                                              Text(
                                                "\$\2.02k",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.green),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Vs last month",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 30,
                                            thickness: 0.01,
                                          ),
                                          Row(
                                            children: [
                                              //Text("\$",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                              Text(
                                                "59%",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 65,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Net profit margin",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.arrow_drop_up,
                                                  color: Colors.green),
                                              Text(
                                                "2%",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.green),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Vs last month",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 400,
                                    height: 300,
                                    color: Color(0xe60e1248),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Avg. Order value",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 10),
                                            child: Column(
                                              children: [
                                                AnimatedRadialGauge(
                                                    duration: const Duration(
                                                        seconds: 1),
                                                    curve: Curves.elasticOut,
                                                    radius: 160,
                                                    value: 50,
                                                    axis: GaugeAxis(
                                                       min: 0,
                                                      max: 100,

                                                      degrees: 180,

                                                      style:
                                                          const GaugeAxisStyle(
                                                        thickness: 30,
                                                        background:
                                                            Color(0xFFDFE2EC),
                                                        segmentSpacing: 0,
                                                      ),

                                                     pointer:
                                                          GaugePointer.needle(
                                                        color: Colors.white,
                                                        height: 150,
                                                        width: 10,
                                                        //size: Size(16, 100),
                                                        //borderRadius: 5,
                                                        //backgroundColor: Color(0xFF193663),
                                                      ),
                                                      progressBar:
                                                          const GaugeProgressBar
                                                              .basic(
                                                        color:
                                                        Color(0xff4d4e77)
                                                      ),
                                                      segments: [
                                                        const GaugeSegment(
                                                          from: 0,
                                                          to: 50,
                                                          color: Colors.black,
                                                          cornerRadius:
                                                              Radius.zero,
                                                        ),
                                                        const GaugeSegment(
                                                          from: 50,
                                                          to: 100,
                                                          color: Colors.green,
                                                          cornerRadius:
                                                              Radius.zero,
                                                        ),
                                                        // const GaugeSegment(
                                                        //   from: 66.6,
                                                        //   to: 100,
                                                        //   color: Color(0xFFD9DEEB),
                                                        //   cornerRadius: Radius.zero,
                                                        // ),
                                                      ],
                                                    )),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 30.0),
                                                        child: Text(
                                                          "\$0",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 25.0),
                                                        child: Text(
                                                          "\$50",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ]),
                                                Center(
                                                    child: Text(
                                                  "\$29",
                                                  style: TextStyle(
                                                      fontSize: 42,
                                                      color: Colors.white),
                                                )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 400,
                                    height: 500,
                                    color: Color(0xe60e1248),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "P&L Statement-last month",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                          ),
                                          Divider(
                                            height: 15,
                                            thickness: 0.01,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Sale Price",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              //SizedBox(width: 220,),
                                              Text(
                                                "\$22k",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          Divider(thickness: 0.2),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Referer cut",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              //SizedBox(width: 260,),
                                              Text(
                                                "\$259",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          Divider(
                                            thickness: 0.2,
                                          ),
                                          Divider(thickness: 0.01, height: 45),
                                          Divider(
                                            thickness: 0.2,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Packaging Cost",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              //SizedBox(width: 220,),
                                              Text(
                                                "\$380",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          Divider(thickness: 0.2),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Shiping costs",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              //SizedBox(width: 260,),
                                              Text(
                                                "\$1,140",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          Divider(thickness: 0.2),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Warehouse cost",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              //SizedBox(width: 220,),
                                              Text(
                                                "\$912",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          // Divider(thickness: 0.2,),
                                          Divider(
                                            thickness: 0.2,
                                          ),
                                          Divider(
                                            thickness: 0.01,
                                            height: 45,
                                          ),
                                          Divider(
                                            thickness: 0.2,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Paypal transaction",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              //SizedBox(width: 260,),
                                              Text(
                                                "\$3.6k",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 0.2,
                                          ),
                                          Divider(
                                            thickness: 0.01,
                                            height: 45,
                                          ),
                                          Divider(
                                            thickness: 0.2,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Total cost",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              //SizedBox(width: 260,),
                                              Text(
                                                "\$3.6k",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Material(
                                  elevation: 5,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 400,
                                    height: 350,
                                    color: Color(0xe60e1248),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sales by referer",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                          ),
                                          Divider(
                                            height: 20,
                                            thickness: 0.01,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "No value",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              //SizedBox(width: 220,),
                                              Text(
                                                "\15.5k",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          Divider(thickness: 0.2),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "https://rawes.com",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              //SizedBox(width: 260,),
                                              Text(
                                                "\$1,124",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          Divider(thickness: 0.2),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "https://robht.biz",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              //SizedBox(width: 220,),
                                              Text(
                                                "\$912",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          Divider(
                                            thickness: 0.2,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "https://rgh.com",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              //SizedBox(width: 220,),
                                              Text(
                                                "\$546",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          Divider(thickness: 0.2),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "https://herman-rolks.com",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              //SizedBox(width: 260,),
                                              Text(
                                                "\$213",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Material(
                  elevation: 5,
                  color: const Color(0xe60e1248),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 22.0),
                      child: Wrap(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ecommerce KPI dashboard",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Powered by kologsoft",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 1100,
                          ),
                          Text(
                            "5:00",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      duration: Duration(milliseconds: 250),
      sampleData1,
    );
  }
}

LineChartData get sampleData1 => LineChartData(
      gridData: griddata,
      titlesData: titlesdata,
      borderData: borderdata,
      lineBarsData: linebarsdata,
      minX: 0,
      maxX: 14,
      minY: 0,
      maxY: 4,
    );

List<LineChartBarData> get linebarsdata => [linebarsdata1, linebarsdata2];

FlGridData get griddata => FlGridData(
      show: false,
    );

FlTitlesData get titlesdata => FlTitlesData(
    bottomTitles: AxisTitles(
      sideTitles: bottomTitles,
    ),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    leftTitles: AxisTitles(
      sideTitles: leftTitles(),
    ));

Widget LeftTitleWigt(double value, TitleMeta meta) {
  style:
  TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );
  String text;
  switch (value.toInt()) {
    case 1:
      text = "10";
      break;
    case 2:
      text = "20";
      break;
    case 3:
      text = "30";
      break;
    case 4:
      text = "40";
      break;
    case 5:
      text = "50";
      break;
    default:
      return Container();
  }
  return Text(
    text,
    style: TextStyle(color: Colors.white),
    textAlign: TextAlign.center,
  );
}

SideTitles leftTitles() => const SideTitles(
      getTitlesWidget: LeftTitleWigt,
      showTitles: true,
      interval: 1,
      reservedSize: 40,
    );

Widget bottomTitlewgt(double value, TitleMeta meta) {
  style:
  const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );
  Widget text;
  switch (value.toInt()) {
    case 2:
      text = const Text(
        "2020",
        style: TextStyle(color: Colors.white),
      );
      break;
    case 8:
      text = const Text(
        "2021",
        style: TextStyle(color: Colors.white),
      );
      break;
    case 12:
      text = const Text(
        "2022",
        style: TextStyle(color: Colors.white),
      );
      break;
    default:
      text = const Text("");
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 10,
    child: text,
  );
}

SideTitles get bottomTitles => const SideTitles(
    showTitles: true, reservedSize: 32, getTitlesWidget: bottomTitlewgt);

FlBorderData get borderdata => FlBorderData(
    show: true,
    border: const Border(
      bottom: BorderSide(color: Colors.grey, width: 0.1),
      left: BorderSide(color: Colors.grey, width: 0.1),
      right: BorderSide(
        color: Colors.transparent,
      ),
      top: BorderSide(color: Colors.transparent),
    ));

LineChartBarData get linebarsdata1 => LineChartBarData(
        isCurved: true,
        color: Color(0xd9ead75d),
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.6),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(12, 2.9),
          FlSpot(13, 1.6),
        ]);

LineChartBarData get linebarsdata2 => LineChartBarData(
        isCurved: true,
        color: Color(0xff4fc0d2),
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 2),
          FlSpot(3, 1.2),
          FlSpot(5, 1),
          FlSpot(7, 4),
          FlSpot(10, 2),
          FlSpot(12, 2.5),
          FlSpot(13, 1.6),
        ]);

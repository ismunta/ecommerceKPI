import 'package:flutter/material.dart';
class PosiTion extends StatelessWidget {
  const PosiTion({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Position Container"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  color: Colors.blue,
                  width: 1200,
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 250,
                              height: 120,
                              color: Colors.yellow,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    width: 250,
                                    height: 35,
                                    color: Colors.yellow,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    width: 250,
                                    height: 35,
                                    color: Colors.yellow,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    width: 250,
                                    height: 35,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],

                            )
                          ],
                        ),
                        Text(screenWidth.toString(),style: TextStyle(fontSize: 24),),
                        Text(screenHeight.toString(),style: TextStyle(fontSize: 24),),
                        const SizedBox(height: 30,),
                        Container(
                          margin: const EdgeInsets.only(right: 9),
                          width: 508,
                          height: 60,
                          color: Colors.yellow,
                        ),
                        const SizedBox(height: 30,),
                        Container(
                          margin: const EdgeInsets.only(right: 9),
                          width: 508,
                          height: 60,
                          //color: Colors.yellow,
                          child: Row(
                            children: [
                              Container(
                                  width: 92,
                                  height: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.black26
                                    ),
                                ),
                               SizedBox(width: 10,),
                               Container(
                                  width: 92,
                                  height: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.black26
                                    ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  width: 92,
                                  height: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.black26
                                    ),
                                ),
                                SizedBox(width: 10,),
                               Container(
                                  width: 92,
                                  height: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.black26
                                    ),
                                ),
                               SizedBox(width: 10,),
                               Container(
                                  width: 90,
                                  height: 100,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.black26
                                    ),
                                ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}

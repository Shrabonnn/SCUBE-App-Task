import 'package:flutter/material.dart';
import 'package:scube_app_task/screens/first_page.dart';

import '../widgets/data_view_card.dart';
import '../widgets/rich_text.dart';
import '../widgets/second_page_card.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  bool isSourceSelected = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar:  AppBar(
        title: Text('2nd Page'),
        centerTitle: true,
        actions: [
          Stack(children: [
            IconButton(onPressed: () {},
                icon: Icon(Icons.notifications_none_outlined,size: 30,)),
            SizedBox(
                height: 35,width: 60,child: Image.asset('assets/second_page/Ellipse 166.png'))

          ])
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FirstPage(),),);
                  },
                  child: const Text('1st Page Navigate    >',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
        
                  ),),
              ),
              const SizedBox(height: 8,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade100,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: .3
                                )
                              )
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft:  Radius.circular(12))
                                  ),child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(child: Text("Summary",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),)),
                                  )),
                                ),
                                Expanded(
                                  child: Container(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(child: Text("SLD",style: TextStyle(fontSize: 20,color: Colors.black54),)),
                                  )),
                                ),
                                Expanded(
                                  child: Container(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(child: Text("Data",style: TextStyle(fontSize: 20,color: Colors.black54),)),
                                  )),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Electricity",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.grey),)
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            indent: 8,
                            endIndent: 8,
                          ),
                          SizedBox(height: 8,),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 150,
                                height: 150,
                                child: CircularProgressIndicator(
                                  value: 0.67,
                                  strokeWidth: 22,
                                  color: Colors.blue,
                                  backgroundColor: Colors.blue.shade100,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Total Power",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "5.53 kW",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16,),


                          Container(
                            height: 38,
                            width: 280,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade100,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [

                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isSourceSelected = true;
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: isSourceSelected ? Colors.blue : Colors.transparent,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "Source",
                                        style: TextStyle(
                                          color: isSourceSelected ? Colors.white : Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isSourceSelected = false;
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: !isSourceSelected ? Colors.blue : Colors.transparent,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "Load",
                                        style: TextStyle(
                                          color: !isSourceSelected ? Colors.white : Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Divider(
                            thickness: 3,
                            indent: 8,
                            endIndent: 8,
                          ),

                          SizedBox(height: 4,),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              height: 280,
                              child: Scrollbar(
                                trackVisibility: true,
                                thumbVisibility: true,
                                thickness: 2,
                                interactive: true,
                                radius: Radius.circular(8),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      DataViewCard(
                                        leadingImage: 'assets/second_page/solar_cell.png',
                                        titleIcon: 'assets/second_page/data_view_1.png',
                                        title: 'Data View',
                                        statusText: '(Active)',
                                        data1Label: 'Data 1',
                                        data1Value: '55505.63',
                                        data2Label: 'Data 2',
                                        data2Value: '55505.63',
                                      ),

                                      SizedBox(height: 8,),
                                      DataViewCard(
                                        leadingImage: 'assets/second_page/power_box.png',
                                        titleIcon: 'assets/second_page/data_view_2.png',
                                        title: 'Data View 2',
                                        statusText: '(Active)',
                                        data1Label: 'Data 1',
                                        data1Value: '55505.63',
                                        data2Label: 'Data 2',
                                        data2Value: '55505.63',
                                      ),

                                      SizedBox(height: 8,),
                                      DataViewCard(
                                        leadingImage: 'assets/second_page/power.png',
                                        titleIcon: 'assets/second_page/data_view_3.png',
                                        title: 'Data View 3',
                                        statusText: '(Inactive)',
                                        statusColor: Colors.red,
                                        data1Label: 'Data 1',
                                        data1Value: '55505.63',
                                        data2Label: 'Data 2',
                                        data2Value: '55505.63',
                                      ),

                                      SizedBox(height: 8,),
                                      DataViewCard(
                                        leadingImage: 'assets/second_page/solar_cell.png',
                                        titleIcon: 'assets/second_page/data_view_1.png',
                                        title: 'Total Solar',
                                        statusText: '(Active)',
                                        data1Label: 'Live Power',
                                        data1Value: '55505.63 kW',
                                        data2Label: 'Today Energy',
                                        data2Value: '55505.63 kWh',
                                      ),


                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 8,),




                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SecondPageCard(
                              imagePath: 'assets/second_page/last portion/analysis.png',
                              title: 'Analysis Pro',
                            ),

                            SizedBox(width: 24,),
                            SecondPageCard(
                              imagePath: 'assets/second_page/last portion/generator.png',
                              title: 'G. Generator',
                            ),

                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SecondPageCard(
                              imagePath: 'assets/second_page/last portion/plant.png',
                              title: 'Plant Summery',
                              fontSize: 16,


                            ),

                            SizedBox(width: 24,),
                            SecondPageCard(
                              imagePath: 'assets/second_page/last portion/gas.png',
                              title: 'Natural Gas',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SecondPageCard(
                              imagePath: 'assets/second_page/last portion/generator.png',
                              title: 'D. Generator',
                            ),

                            SizedBox(width: 24,),
                            SecondPageCard(
                              imagePath: 'assets/second_page/last portion/water.png',
                              title: 'Water Process',
                            ),

                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
        
        
            ],
          ),
        ),
      ),

    );
  }
}

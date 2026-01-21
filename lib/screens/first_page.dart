import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scube_app_task/models/time_weather.dart';
import 'package:scube_app_task/screens/second_page.dart';
import 'package:scube_app_task/widgets/rich_text.dart';

import '../widgets/capacity_info_card.dart';
import '../widgets/energy_info_card.dart';
import '../widgets/info_card.dart';
import '../widgets/table_text.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {

    final currentWeather = getCurrentWeather();


    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        title: Text('1st Page'),
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // navigation
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecondPage(),),);
                  },
                child: const Text('2nd Page Navigate    >',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
          
                  ),),
              ),
              const SizedBox(height: 12,),


              //first portion
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoCard(
                        imagePath: 'assets/first_page/first_portion/Live AC Power.png',
                        value: '10000 kW',
                        title: 'Live AC Power',
                      ),
                      SizedBox(width: 6,),

                      InfoCard(
                        imagePath: 'assets/first_page/first_portion/Plant Generation.png',
                        value: '82.58 %',
                        title: 'Plant Generation',
                      ),



                      SizedBox(width: 6,),
                      InfoCard(
                        imagePath: 'assets/first_page/first_portion/Live PR.png',
                        value: '85.61 %',
                        title: 'Live PR',
                      ),


                    ],
                  ),
                  SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoCard(
                        imagePath: 'assets/first_page/first_portion/Cumulative PR.png',
                        value: '27.58',
                        title: 'Cumulative PR',
                      ),
                      SizedBox(width: 6,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset('assets/first_page/first_portion/Return PV(Till Today).png',
                                      width: 22,
                                      height: 22,),
                                  ],
                                ),
                                SizedBox(width: 4,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('10000 ৳',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
                                    Text.rich(TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Return PV',
                                          style: TextStyle(color: Colors.black54, fontSize: 11),
                                        ),
                                        TextSpan(
                                          text: ' (Till Today)',
                                          style: TextStyle(color: Colors.black54, fontSize: 7), // choto size
                                        ),
                                      ]
                                    ))

                                    //Text('Return PV (Till Today)',style: TextStyle(color: Colors.black54,fontSize: 11),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 6,),

                      InfoCard(
                        imagePath: 'assets/first_page/first_portion/Total Energy.png',
                        value: '10000 kWh',
                        title: 'Total Energy',
                      ),


                    ],
                  ),
          
                ],
              ),
              const SizedBox(height: 12,),

              //module Temp
              Container(
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // temp section
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RichText(text: TextSpan(
                              children: [
                                TextSpan(text: currentWeather.temp ,style: TextStyle(fontSize: 30,color: Colors.blue,fontWeight: FontWeight.w700)),
                                TextSpan(text: 'C',style: TextStyle(fontSize: 25,color: Colors.blue)),

                              ]
                            ) ),
                            SizedBox(height: 8,),

                            Text("Module",style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.w400),),
                            Text("Temperature",style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    ),
                    //icon section cloud
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 8),
                      child: Container(
                        // for text
                        child: Row(
                          children: [
                            // text
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //first line text
                                Text("26 MPH / NW",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
                                Text("Wind Speed & Direction",style: TextStyle(fontSize: 14,color: Colors.white),),

                                Text("15.20 w/m^2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
                                Text("Effective Irradiation",style: TextStyle(fontSize: 14,color: Colors.white),),
                              ],
                            ),
                            //icon
                            Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(currentWeather.image,height: 80,width: 70,)

                              ],
                            )
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(height: 12,),

              // table
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: DataTable(
                    headingRowColor: MaterialStateProperty.all(Colors.white70),
                    headingRowHeight: 40,
                    dataRowHeight: 40,
                    columnSpacing: 26,
          
                    columns: [
                  DataColumn(label: TableText(' ')),
                  DataColumn(label: TableText("Yesterday's Data",fontWeight: FontWeight.normal,)),
                  DataColumn(label: TableText("Today's Data",fontWeight: FontWeight.normal,)),
                   ],
          
                    rows: [
                  DataRow(
                      color:  MaterialStateProperty.all(Colors.white),
                      cells: [
                    DataCell(TableText('AC Max Power',fontWeight: FontWeight.normal,)),
                    DataCell(TableText('1636.50 kW')),
                    DataCell(TableText('2121.88 kW')),
                  ]),
                  DataRow(color:  MaterialStateProperty.all(Colors.lightBlue.shade200),
                      cells: [
                    DataCell(TableText('Net Energy',fontWeight: FontWeight.normal,)),
                    DataCell(TableText('6439.16 kWh')),
                    DataCell(TableText('4875.77 kWh')),
                  ]),
                  DataRow(color:  MaterialStateProperty.all(Colors.white),
                      cells: [
                    DataCell(TableText('Specific Yield',fontWeight: FontWeight.normal,)),
                    DataCell(TableText('1.25 kWh/kWp')),
                    DataCell(TableText('0.94 kWh/kWp')),
                  ]),
                  DataRow(color:  MaterialStateProperty.all(Colors.lightBlue.shade200),
                      cells: [
                    DataCell(TableText('Net Energy',fontWeight: FontWeight.normal,)),
                    DataCell(TableText('6439.16 kWh')),
                    DataCell(TableText('4875.77 kWh')),
                  ]),
                  DataRow(color:  MaterialStateProperty.all(Colors.white),
                      cells: [
                    DataCell(TableText('Specific Yield',fontWeight: FontWeight.normal,)),
                    DataCell(TableText('1.25 kWh/kWp')),
                    DataCell(TableText('0.94 kWh/kWp')),
                  ]),
                ]),
              ),
              const SizedBox(height: 12,),


              Container(height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4)
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/first_page/fourth_portion/mask_group.png',height: 25,width: 25,),
                    Text(" Total Num of PV Module : "),
                    TableText("6372pcs. (585 Wp each)",fontSize: 14,),
                  ],
                ),
              ),
              const SizedBox(height: 12,),

              //fourth portion
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CapacityInfoCard(
                        imagePath: 'assets/first_page/fourth_portion/Group 1000011085.png',
                        title: 'Total AC Capacity',
                        value: '3000 kW',
                      ),
                      SizedBox(width: 6,),
                      CapacityInfoCard(
                        imagePath: 'assets/first_page/fourth_portion/total_dc_capacity.png',
                        title: 'Total DC Capacity',
                        value: '3.727 MWp',
                      ),
                    ],
                  ),
                  SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CapacityInfoCard(
                        imagePath: 'assets/first_page/fourth_portion/date_of_comissioning.png',
                        title: 'Date of Commissioning',
                        value: '17/07/2024',
                      ),

                      SizedBox(width: 6,),

                      CapacityInfoCard(
                        imagePath: 'assets/first_page/fourth_portion/number_of_inverter.png',
                        title: 'Number of Inverter',
                        value: '30',
                      ),

                    ],
                  ),
                  SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CapacityInfoCard(
                        imagePath: 'assets/first_page/fourth_portion/Group 1000011085.png',
                        title: 'Total AC Capacity',
                        value: '3000 kW',
                      ),

                      SizedBox(width: 6,),

                      CapacityInfoCard(
                        imagePath: 'assets/first_page/fourth_portion/total_dc_capacity.png',
                        title: 'Total DC Capacity',
                        value: '3.727 MWp',
                      ),



                    ],
                  ),
          
          
                ],
              ),
              const SizedBox(height: 12,),



              // last portion
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("LT_01",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                              Spacer(),
                              Column(
                                children: [
                                  Row(children: [
                                    Image.asset('assets/first_page/last_portion/Asset 15.png'),
                                    SizedBox(width: 4,),
                                    Text("495.505kWp/ 440kW",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500),)
                                  ],)
                                ],
                              )
                            ],
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.only(left: 12,top: 4,bottom: 4,right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                EnergyInfoCard(
                                  imagePath: 'assets/first_page/last_portion/Group 1000011086.png',
                                  label: 'Lifetime Energy',
                                  value: '352.96 MWh',
                                ),

                                Spacer(),
                                EnergyInfoCard(
                                  imagePath: 'assets/first_page/last_portion/Group 1000011031.png',
                                  label: 'Today Energy',
                                  value: '273.68 MWh',
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12,top: 4,bottom: 4,right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                EnergyInfoCard(
                                  imagePath: 'assets/first_page/last_portion/Group 1000010988.png',
                                  label: 'Prev. Meter Energy',
                                  value: '0.00 MWh',
                                ),

                                Spacer(),
                                EnergyInfoCard(
                                  imagePath: 'assets/first_page/last_portion/Group 1000010987.png',
                                  label: 'Live Power',
                                  value: '352.96 MWh',
                                ),

                              ],
                            ),
                          )
          
          
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("LT_01",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                              Spacer(),
                              Column(
                                children: [
                                  Row(children: [
                                    Image.asset('assets/first_page/last_portion/Asset 15.png'),
                                    SizedBox(width: 4,),
                                    Text("495.505kWp/ 440kW",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500),)
                                  ],)
                                ],
                              )
                            ],
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.only(left: 12,top: 4,bottom: 4,right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                EnergyInfoCard(
                                  imagePath: 'assets/first_page/last_portion/Group 1000011086.png',
                                  label: 'Lifetime Energy',
                                  value: '352.96 MWh',
                                ),

                                Spacer(),
                                EnergyInfoCard(
                                  imagePath: 'assets/first_page/last_portion/Group 1000011031.png',
                                  label: 'Today Energy',
                                  value: '273.68 MWh',
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12,top: 4,bottom: 4,right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                EnergyInfoCard(
                                  imagePath: 'assets/first_page/last_portion/Group 1000010988.png',
                                  label: 'Prev. Meter Energy',
                                  value: '0.00 MWh',
                                ),

                                Spacer(),
                                EnergyInfoCard(
                                  imagePath: 'assets/first_page/last_portion/Group 1000010987.png',
                                  label: 'Live Power',
                                  value: '352.96 MWh',
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
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:scube_app_task/screens/first_page.dart';

import '../widgets/rich_text.dart';

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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage(),),);
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
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Summary"),
                                Text("SLD"),
                                Text("Data"),
                              ],
                            ),
                          ),
                          Divider(),
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


                          // progress indicator
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
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlue.shade100,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                          color: Colors.black54,
                                          width: .8
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          // for image
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Image.asset('assets/second_page/solar_cell.png',height: 25,width: 25,),
                                              ],
                                            ),
                                          ),
                                          SizedBox( width: 8,),
                                          // for data type
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                      Image.asset('assets/second_page/data_view_1.png'),
                                                      SizedBox(width: 8,),
                                                      Text("Data View",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                      SizedBox(width: 24,),
                                                      Text("(Active)",style: TextStyle(color: Colors.blue),)
                                                    ],),
                                                    SizedBox(height: 4,),
                                                    DemoRichText(
                                                      highlightedText: "Data 1      :",
                                                      normalText: " 55505.63",
                                                    ),
                                                    DemoRichText(
                                                      highlightedText: "Data 2      :",
                                                      normalText: " 55505.63",
                                                    ),
                                                  ],
                                                ),
                                              )

                                            ],
                                          ),
                                          Spacer(),
                                          Icon(Icons.chevron_right_outlined,color: Colors.blue.shade900,size: 40,)

                                      ],),

                                    ),
                                    SizedBox(height: 8,),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlue.shade100,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                          color: Colors.black54,
                                          width: .8
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          // for image
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Image.asset('assets/second_page/power_box.png',height: 25,width: 25,),
                                              ],
                                            ),
                                          ),
                                          SizedBox( width: 8,),
                                          // for data type
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                      Image.asset('assets/second_page/data_view_2.png'),
                                                      SizedBox(width: 8,),
                                                      Text("Data View 2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                      SizedBox(width: 24,),
                                                      Text("(Active)",style: TextStyle(color: Colors.blue),)
                                                    ],),
                                                    SizedBox(height: 4,),
                                                    DemoRichText(
                                                      highlightedText: "Data 1      :",
                                                      normalText: " 55505.63",
                                                    ),
                                                    DemoRichText(
                                                      highlightedText: "Data 2      :",
                                                      normalText: " 55505.63",
                                                    ),
                                                  ],
                                                ),
                                              )

                                            ],
                                          ),
                                          Spacer(),
                                          Icon(Icons.chevron_right_outlined,color: Colors.blue.shade900,size: 40,)

                                      ],),

                                    ),
                                    SizedBox(height: 8,),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlue.shade100,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Colors.black54,
                                            width: .8
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          // for image
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Image.asset('assets/second_page/power.png',height: 25,width: 25,),
                                              ],
                                            ),
                                          ),
                                          SizedBox( width: 8,),
                                          // for data type
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Image.asset('assets/second_page/data_view_3.png'),
                                                        SizedBox(width: 8,),
                                                        Text("Data View 3",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        SizedBox(width: 24,),
                                                        Text("(Inactive)",style: TextStyle(color: Colors.red),)
                                                      ],),
                                                    SizedBox(height: 4,),
                                                    DemoRichText(
                                                      highlightedText: "Data 1      :",
                                                      normalText: " 55505.63",
                                                    ),
                                                    DemoRichText(
                                                      highlightedText: "Data 2      :",
                                                      normalText: " 55505.63",
                                                    ),
                                                  ],
                                                ),
                                              )

                                            ],
                                          ),
                                          Spacer(),
                                          Icon(Icons.chevron_right_outlined,color: Colors.blue.shade900,size: 40,)

                                        ],),

                                    ),
                                    SizedBox(height: 8,),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlue.shade100,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Colors.black54,
                                            width: .8
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          // for image
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Image.asset('assets/second_page/solar_cell.png',height: 25,width: 25,),
                                              ],
                                            ),
                                          ),
                                          SizedBox( width: 8,),
                                          // for data type
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Image.asset('assets/second_page/data_view_1.png'),
                                                        SizedBox(width: 8,),
                                                        Text("Total Solar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        SizedBox(width: 24,),
                                                        Text("(Active)",style: TextStyle(color: Colors.blue),)
                                                      ],),
                                                    SizedBox(height: 4,),
                                                    DemoRichText(
                                                      highlightedText: "Live Power       :",
                                                      normalText: " 55505.63 kW",
                                                    ),
                                                    DemoRichText(
                                                      highlightedText: "Today Energy   :",
                                                      normalText: " 55505.63 kWh",
                                                    ),
                                                  ],
                                                ),
                                              )

                                            ],
                                          ),
                                          Spacer(),
                                          Icon(Icons.chevron_right_outlined,color: Colors.blue.shade900,size: 40,)

                                        ],),

                                    ),

                                  ],
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
                            Expanded(
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/second_page/last portion/analysis.png',
                                        width: 22,
                                        height: 22,),
                                      SizedBox(width: 8,),
                                      Text('Analysis Pro',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black54),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 24,),
                            Expanded(
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/second_page/last portion/generator.png',
                                        width: 22,
                                        height: 22,),
                                      SizedBox(width: 8,),
                                      Text('G. Generator',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black54),),
                                    ],
                                  ),
                                ),
                              ),
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
                            Expanded(
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/second_page/last portion/analysis.png',
                                        width: 22,
                                        height: 22,),
                                      SizedBox(width: 8,),
                                      Text('Analysis Pro',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black54),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 24,),
                            Expanded(
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/second_page/last portion/generator.png',
                                        width: 22,
                                        height: 22,),
                                      SizedBox(width: 8,),
                                      Text('G. Generator',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black54),),
                                    ],
                                  ),
                                ),
                              ),
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
                            Expanded(
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/second_page/last portion/analysis.png',
                                        width: 22,
                                        height: 22,),
                                      SizedBox(width: 8,),
                                      Text('Analysis Pro',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black54),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 24,),
                            Expanded(
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/second_page/last portion/generator.png',
                                        width: 22,
                                        height: 22,),
                                      SizedBox(width: 8,),
                                      Text('G. Generator',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.black54),),
                                    ],
                                  ),
                                ),
                              ),
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

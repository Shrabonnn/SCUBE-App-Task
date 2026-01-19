import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage(),),);
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
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
                                  Image.asset('assets/first_page/first_portion/Live AC Power.png',
                                  width: 22,
                                  height: 22,),
                                ],
                              ),
                              SizedBox(width: 4,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('10000 kW',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
                                  //SizedBox(height: 2,),
                                  Text('Live AC Power',style: TextStyle(color: Colors.black54,fontSize: 11),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
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
                                  Image.asset('assets/first_page/first_portion/Plant Generation.png',
                                    width: 22,
                                    height: 22,),
                                ],
                              ),
                              SizedBox(width: 4,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('82.58 %',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
                                  //SizedBox(height: 2,),
                                  Text('Plant Generation',style: TextStyle(color: Colors.black54,fontSize: 11),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
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
                                  Image.asset('assets/first_page/first_portion/Live PR.png',
                                    width: 22,
                                    height: 22,),
                                ],
                              ),
                              SizedBox(width: 4,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('85.61 %',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
                                  //SizedBox(height: 2,),
                                  Text('Live PR',style: TextStyle(color: Colors.black54,fontSize: 11),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 6,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
                                  Image.asset('assets/first_page/first_portion/Cumulative PR.png',
                                  width: 22,
                                  height: 22,),
                                ],
                              ),
                              SizedBox(width: 4,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('27.58',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
                                  //SizedBox(height: 2,),
                                  Text('Comulative PR',style: TextStyle(color: Colors.black54,fontSize: 11),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
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
                                  Image.asset('assets/first_page/first_portion/Total Energy.png',
                                    width: 22,
                                    height: 22,),
                                ],
                              ),
                              SizedBox(width: 4,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('10000 kWh',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
                                  //SizedBox(height: 2,),
                                  Text('Total Energy',style: TextStyle(color: Colors.black54,fontSize: 11),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),














              ],
            ),
            const SizedBox(height: 12,),
            Column()


          ],
        ),
      ),
    );
  }
}

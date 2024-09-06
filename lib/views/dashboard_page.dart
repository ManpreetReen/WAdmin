import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         backgroundColor: Colors.black,

         body:
        SingleChildScrollView(
          child: Column(
            children: [


                  Container(
                height: 135,
                width: 600,
                margin:const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color:const Color(0xFF3D0F53),
                    borderRadius: BorderRadius.circular(14)
                ),

            child: LineChart(
              LineChartData(
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 1),
                      const FlSpot(1, 3),
                      const FlSpot(2, 5),
                      const FlSpot(3, 2),
                      const FlSpot(4, 4),
                    ],
                    isCurved: true,
                    color: Colors.blue,
                    barWidth: 4,
                    dotData: const FlDotData(show: false),
                  ),
                ],
              ),
            ),
          ),

              Container(
                margin:const EdgeInsets.fromLTRB(10, 0, 10, 10),
                decoration: BoxDecoration(
                    color:const Color(0xFF3D0F53),
                borderRadius: BorderRadius.circular(14)),
                child: ClipRRect(borderRadius: BorderRadius.circular(14),
                  child: CarouselSlider(
                            options: CarouselOptions(
                              height: 115.0, // Adjust the height as needed
                              viewportFraction: 1.03,// Makes the carousel take up the full width
                              autoPlay: true,

                            ),
                            items: [
                              'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg',
                              'https://images.pexels.com/photos/27703381/pexels-photo-27703381/free-photo-of-a-mcdonald-s-bag-and-a-car-are-sitting-on-the-hood-of-a-car.jpeg',
                              'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                              'https://images.pexels.com/photos/1109197/pexels-photo-1109197.jpeg',

                            ].map((i) {
                              return Builder(
                   builder: (BuildContext context) {
                     return Container(
                       width: MediaQuery.of(context).size.width,
                       margin: const EdgeInsets.symmetric(horizontal: 5.0),

                       //decoration: BoxDecoration(
                        // color: Colors.amber,
                        // borderRadius: BorderRadius.circular(5.0),
                      // ),
                       child: Image.network(i, fit: BoxFit.cover),
                     );
                   },
                              );
                            }).toList(),
                          ),
                ),
              ),
              Container(
                height: 178,
              width: 600,
              margin: const EdgeInsets.fromLTRB(10,0,10,10),
              decoration: BoxDecoration(
                color:const Color(0xFF3D0F53),

                  borderRadius: BorderRadius.circular(14)
              ),
                child:Column(
                  children: [
                    const Padding(
                padding: EdgeInsets.fromLTRB(16, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text
                          ('Transfer Money',

                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                        ),
                          //textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),

                            IconButton(
                              onPressed: (){
                                Get.toNamed('/user');
                              },
                              icon: const Icon(
                                Icons.account_circle_outlined, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                                //backgroundColor: Colors.purple, // Color of the
                              ),

                            ),

                            const Text(
                              'Users',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],

                ),
              ),



              Container(
                height: 178,
                width: 600,
                margin: const EdgeInsets.fromLTRB(10,0,10,10),
                decoration: BoxDecoration(
                    color:const Color(0xFF3D0F53),

                    borderRadius: BorderRadius.circular(14)
                ),
                child:Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text
                          ('Transfer Money',

                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          //textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){
                                Get.toNamed('/mobile');
                              },
                              icon: const Icon(
                                Icons.account_circle_outlined, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                                //backgroundColor: Colors.purple, // Color of the
                              ),

                            ),

                            const Text(
                              'To Mobile\n  number',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){
                                Get.toNamed('/bank');
                              },
                              icon: const Icon(
                                Icons.account_balance, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                              ),
                            ),
                            const Text(
                              'To Bank/UPI\n         ID',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){
                                Get.toNamed('/selfAccount');
                              },
                              icon: const Icon(
                                Icons.account_circle, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                              ),
                            ),
                            const Text(
                              'To Self\nAccount',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){
                                Get.toNamed('/checkBalance');
                              },
                              icon: const Icon(

                                Icons.account_balance_outlined, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                              ),
                            ),
                            const Text(
                              'Check Bank\n   Balance ',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )






                  ],
                ),
              ),
              Container(
                height: 178,
                width: 600,
                margin: const EdgeInsets.fromLTRB(10,0,10,10),
                decoration: BoxDecoration(
                    color:const Color(0xFF3D0F53),

                    borderRadius: BorderRadius.circular(14)
                ),
                child:Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text
                          ('Transfer Money',

                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          //textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){
                                Get.toNamed('/mobile');
                              },
                              icon: const Icon(
                                Icons.account_circle_outlined, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                                //backgroundColor: Colors.purple, // Color of the
                              ),

                            ),

                            const Text(
                              'To Mobile\n  number',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){
                                Get.toNamed('/bank');
                              },
                              icon: const Icon(
                                Icons.account_balance, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                              ),
                            ),
                            const Text(
                              'To Bank/UPI\n         ID',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){
                                Get.toNamed('/selfAccount');
                              },
                              icon: const Icon(
                                Icons.account_circle, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                              ),
                            ),
                            const Text(
                              'To Self\nAccount',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){
                                Get.toNamed('/checkBalance');
                              },
                              icon: const Icon(

                                Icons.account_balance_outlined, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                              ),
                            ),
                            const Text(
                              'Check Bank\n   Balance ',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )






                  ],
                ),
              ),
              Container(
                height: 178,
                width: 600,
                margin: const EdgeInsets.fromLTRB(10,0,10,10),
                decoration: BoxDecoration(
                    color:const Color(0xFF3D0F53),

                    borderRadius: BorderRadius.circular(14)
                ),
                child:Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text
                          ('Transfer Money',

                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          //textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){
                                Get.toNamed('/mobile');
                              },
                              icon: const Icon(
                                Icons.account_circle_outlined, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                                //backgroundColor: Colors.purple, // Color of the
                              ),

                            ),

                            const Text(
                              'To Mobile\n  number',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){
                                Get.toNamed('/bank');
                              },
                              icon: const Icon(
                                Icons.account_balance, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                              ),
                            ),
                            const Text(
                              'To Bank/UPI\n         ID',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){
                                Get.toNamed('/selfAccount');
                              },
                              icon: const Icon(
                                Icons.account_circle, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                              ),
                            ),
                            const Text(
                              'To Self\nAccount',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: (){
                                Get.toNamed('/checkBalance');
                              },
                              icon: const Icon(

                                Icons.account_balance_outlined, // Replace with the desired icon
                                size: 38.0, // Same size as the previous ClipRRect
                                color: Colors.white, // Color of the icon
                              ),
                            ),
                            const Text(
                              'Check Bank\n   Balance ',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )






                  ],
                ),
              ),
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 52,
                      width: 119,

                      margin: const EdgeInsets.fromLTRB(10, 0, 5, 10),
                      decoration: BoxDecoration(
                        color:const Color(0xFF3D0F53),
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(18, 10, 10, 10),
                        child: Row(
                          children: [
                            Icon(Icons.credit_card,
                                size: 24,
                                color: Colors.purpleAccent,
                            ),
                            SizedBox(width: 8),
                            Text.rich(
                              TextSpan(
                                  text: 'PhonePe',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                              children:[
                                TextSpan(
                                  text: '\nWallet',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                              ),
                            ),

                          ],
                        ),
                      ),


                    ),
                  ),








                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 52,
                      width: 119,
                      margin: const EdgeInsets.fromLTRB(5,0,5,10),
                      decoration: BoxDecoration(
                          color:const Color(0xFF3D0F53),
                          borderRadius: BorderRadius.circular(14)
                      ),

                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(18, 10, 10, 10),
                        child: Row(
                          children: [
                            Icon(Icons.card_giftcard_rounded,
                              size: 24,
                              color: Colors.purpleAccent,
                            ),
                            SizedBox(width: 8),
                            Text.rich(
                                TextSpan(
                                    text: 'Explore\n',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white),
                                    children: [
                                      TextSpan(
                                          text: 'Rewards',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)
                                      ),
                                    ],
                                ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),





                  GestureDetector(
                    onTap:(){},
                    child: Container(
                      height: 52,
                      width: 132.5,
                      margin: const EdgeInsets.fromLTRB(5,0,10,10),
                      decoration: BoxDecoration(
                          color:const Color(0xFF3D0F53),
                          borderRadius: BorderRadius.circular(14)
                      ),


                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(18, 10, 10, 10),
                        child: Row(
                          children: [
                            Icon(Icons.send,
                              size: 24,
                              color: Colors.purpleAccent,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Refer & Earn",
                              style: TextStyle(
                                fontSize: 12.5,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                  ),
                ],
              ),




            Container(
              height: 165,
            width: 600,
              margin:const EdgeInsets.fromLTRB(10, 0, 10, 10),
              decoration: BoxDecoration(
                  color:const Color(0xFF3D0F53),
                  borderRadius: BorderRadius.circular(14)
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 10, 0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Recharge & Pay Bills',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,),
                                  ),
                    ),
                  ),
const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: (){
                              Get.toNamed('/recharge');
                            },
                            icon: const Icon(
                              Icons.charging_station_outlined, // Replace with the desired icon
                              size: 38.0, // Same size as the previous ClipRRect
                              color: Colors.purpleAccent,
                            ),
                          ),
                          const SizedBox(height:10),
                          const Text(
                            '  Mobile\nRecharge',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),

                          ),
                        ],
                      ),

                       Column(
                        children: [
                          IconButton( onPressed: (){
                            Get.toNamed('/loan');
                          },

                            icon: const Icon(
                              Icons.currency_rupee_outlined,
                              size:38.0,
                              color:Colors.purpleAccent,
                            ),
                          ),
                          const SizedBox(height:10),
                          const Text(
                            '     Loan\nRepayment',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
              ],
                      ),
                       Column(
                        children: [
                          IconButton(
                            onPressed: (){
                              Get.toNamed('/credit');
                            },
                            icon: const Icon(
                              Icons.credit_card_outlined,
                              size:38.0,
                              color:Colors.purpleAccent,
                            ),
                          ),
                          const SizedBox(height:10),
                          const Text(
                            'Credit Card\n   Payment',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                       Column(
                        children: [
                          IconButton(onPressed: (){
                            Get.toNamed('/rent');
                          },
                            icon: const Icon(
                              Icons.add_home_outlined,
                              size:38.0,
                              color:Colors.purpleAccent,
                            ),
                          ),
                          const SizedBox(height:10),
                          const Text(
                            'Rent',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),

                ],
              ),
            ),







Center(

  child: Column(

    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ElevatedButton(
          onPressed: (){
            Get.bottomSheet(

              Container(
                width: double.infinity, // Set the width to match the screen width

                child:  Wrap(

                  children: [

                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 26, 12, 12),
                      child: Column(


                        children:[
                           Row(
                            children: [
                              const Text( "Scan new device ID number",
                                style:TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF61A417),
                                ) ,),
                              const SizedBox(width: 120),
                              InkWell(
                                onTap: (){
                                  Get.back();
                                },
                                child: const Icon(Icons.cancel_outlined,
                                color: Color(0xFF61A417),),
                              ),
                            ],
                          ),
                          const SizedBox(height:10),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text( "The DeviceID number is mentioned on the back side of the device",
                            style: TextStyle(
                                fontSize: 10),),
                          ),
                          const SizedBox(height:10),
                         // ElevatedButton(onPressed: (){},),
                          const SizedBox(height:10),
                          ElevatedButton(onPressed: (){}, child:  const Text('Scan Device ID',
                          ),
                          style:  ButtonStyle(

                            backgroundColor: WidgetStateProperty.all(const Color(0xFF61A417),
                            ),
                              ),),

                          const SizedBox(height:10),
                          const Text( "Click here to scan device ID",
                            style: TextStyle(
                                fontSize: 10),),
                          const SizedBox(height:10),
                        ],

                      ),
                    ),

                  ],
                ),
              ),
              backgroundColor: Colors.white,
              barrierColor: Colors.white,
            );
          },
      child: const Text('show bottomsheet'),
      ),
    ],


  ),
),















            ],
          ),
        ),



      ),
    );

  }
}


















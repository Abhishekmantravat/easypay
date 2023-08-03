import 'package:flutter/material.dart';
import 'package:newproject/constant.dart';

class easypayhome extends StatefulWidget {
  const easypayhome({super.key});

  @override
  State<easypayhome> createState() => _easypayhomeState();
}

class _easypayhomeState extends State<easypayhome> {

  //BottomNavigationBarItem list
  int _selectedTab = 0;
  List _pages = [];
  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 247, 247),
      //  bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: _selectedTab,
          onTap: (index) => _changeTab(index),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '.',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.copy),
              label: '.',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Colors.black,
                maxRadius: 25,
                child: Icon(
                  Icons.qr_code,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              label: '.',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '.',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: '.',
            ),
          ]),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 10, top: 35, right: 10, bottom: 5),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.deblur_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "EasyPay",
                    style: TextStyle(
                        color: secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Samantha",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: secondary,
                              fontSize: 20),
                        ),
                        Text(
                          "Your available balance ",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 25,
                        ),
                        Text(
                          "4,590.00",
                          style: TextStyle(
                              color: secondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )
                      ],
                    )) // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 80,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.data_saver_on_sharp,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.camera_enhance_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Top up",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Send",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Withdraw",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.data_usage)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.water)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.cable)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.tv))
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Internet"),
                          Text("Water"),
                          Text("Electricity"),
                          Text("TV cable"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.car_rental)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.inventory)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.more)),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Vehicle"),
                          Text("Rent Bill"),
                          Text("Invest"),
                          Text("More"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 237, 146, 176),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "50% OFF",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ]),

                              //  for image 
                              
                          // Expanded(
                          //     child: Row(
                          //   mainAxisAlignment: MainAxisAlignment.end,
                          //   crossAxisAlignment: CrossAxisAlignment.end,
                          //   children: [
                          //     Image(
                          //       image: AssetImage(
                          //         "assets/images/images.png",
                          //       ),
                          //       fit: BoxFit.cover,
                          //       height: 100,
                          //       width: 100,
                          //     )
                          //   ],
                          // )),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Summer Special deal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ]),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Get discount for every",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Transaction",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                              ]),
                        ],
                      ),
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Transaction",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "See ALL",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 40,
                        width: 60,
                        // padding: EdgeInsets.all(20),
                        child: Icon(Icons.card_membership_outlined),
                      ),

// SizedBox(width: 10,),

                      Container(
                        padding: const EdgeInsets.only(top: 12),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "RAj K",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "February 24,2022",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(right: 30),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              size: 15,
                            ),
                            Text(
                              "240.00",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ))
                      // Text("RAj K", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
                      // Text("February 24,2022", style: TextStyle(color: Colors.grey, ),),
                      // Text("240.00", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

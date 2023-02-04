import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List images = [
  'assets/images/order.png',
  'assets/images/order.png',
  'assets/images/order.png',
  'assets/images/order.png',
  'assets/images/order.png',
  'assets/images/order.png',
];
List names = [
  "CheckRates",
  "NearbyDrop",
  "Order",
  "HelpCenter",
  "Wallet",
  "Others",
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(1))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/ad.png',
                              scale: 4,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Tracky",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.grey,
                              )),
                              child: CircleAvatar(
                                radius: 15,
                                child: Image.asset(
                                  'assets/images/notification1.png',
                                  scale: 4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Card(
                      elevation: 5,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "My Balance",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "3.382.00",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Top Up",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      decoration: BoxDecoration(
                                        // border: Border.all(
                                        //     // color: Colors.blue,
                                        //     ),
                                        color: Colors.blue,
                                      ),
                                      child: Image.asset(
                                        'assets/images/plus1.png',
                                        scale: 4,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            prefixIcon: const Icon(
                              Icons.search_rounded,
                            ),
                            fillColor: const Color(0XFFF4F3F3),
                            //  focusColor: tBlack,
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 1.0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.transparent, width: 1.5),
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Enter Track Number',
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                            suffixIcon: Image.asset(
                              'assets/images/order.png',
                              scale: 4,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Features",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 2,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            images[index],
                            scale: 4,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(names[index]),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Services and Products",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey,
                          ),
                          child: Image.asset(
                            'assets/images/whichlist.png',
                            scale: 5,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "JT72531835",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Processed at sort facility",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Text(
                                  "2Hrs",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

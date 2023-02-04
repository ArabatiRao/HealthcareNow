import 'package:flutter/material.dart';

class WomensCollectionsPage extends StatefulWidget {
  const WomensCollectionsPage({super.key});

  @override
  State<WomensCollectionsPage> createState() => _WomensCollectionsPageState();
}

class _WomensCollectionsPageState extends State<WomensCollectionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Image.asset(
          'assets/images/arrow.png',
          scale: 4,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Womens Collection",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "2050",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 65,
                ),
                const Icon(
                  Icons.notification_add,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 2,
                ),
                Image.asset(
                  'assets/images/whichlist.png',
                  scale: 4,
                ),
                const SizedBox(
                  width: 2,
                ),
                Image.asset(
                  'assets/images/whichlist.png',
                  scale: 4,
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  width: 300,
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
              ),
              Image.asset(
                'assets/images/sort.png',
                scale: 4,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.network(
                          "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
                          height: 100,
                          width: 100,
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

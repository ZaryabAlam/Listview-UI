import 'package:flutter/material.dart';

List<String> img1 = [
  "https://vuori.imgix.net/s/files/1/0022/4008/6074/files/HO22_VisualNav_Mens_Lifestyle_SeasideHoodie.jpg?ixlib=js-3.7.0&s=defebbed1086e92c7c8f2c5da16da16b",
  "https://cdn.shopify.com/s/files/1/0363/0700/9667/products/J9A8097.jpg?v=1587283315",
  "https://assets.ajio.com/medias/sys_master/root/20230306/emQH/64061a4af997dde6f4e2a034/-1117Wx1400H-460746094-navy-MODEL2.jpg",
  "https://www.na-kd.com/globalassets/skinny_high_waist_jeans_1660-000120-00472283.jpg?ref=A89484ECA9",
  "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8&w=1000&q=80",
];

List<String> name1 = ["Jacket", "Shirt", "Blazer", "Jeans", "Shoes"];

List<String> person1 = ["Nauman", "Ali", "Hamza", "Basit", "Babar"];

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Non Food",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search Icon',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.location_on_outlined),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_left),
          tooltip: 'Back Icon',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ScrollRow("Filters"),
                      SizedBox(width: 10),
                      ScrollRow("Free"),
                      SizedBox(width: 10),
                      ScrollRow("Borrow"),
                      SizedBox(width: 10),
                      ScrollRow("Wanted"),
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.shade200,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "What's Borrow?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Why buy when you can borrow",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Text(
                            "instead? Here neighbours",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Text(
                            "can lend & borrow everyday",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Text(
                            "household items for free.",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Find out more",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Icon(
                        Icons.ac_unit,
                        size: 80,
                        color: Colors.white,
                      ),
                      // SizedBox(width: 1)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("No  Listings  near  you  right  now",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.grey)),
              Text("-  why  not  add  something?",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.grey)),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                    size: 15,
                  ),
                  Text("Listings further away",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black38)),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ListView.builder(
                // primary: false,
                // scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: img1.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    spreadRadius: 4,
                                    blurRadius: 10,
                                    offset: const Offset(0, 3)),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 120,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        // color: Colors.amber,
                                        borderRadius: BorderRadius.circular(25),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                img1[index].toString()))),
                                  )
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(name1[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          color: Colors.black)),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.account_circle_rounded,
                                        color: Colors.blue.shade500,
                                      ),
                                      SizedBox(width: 5),
                                      Text(person1[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                              color: Colors.black38)),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Text("4.2km",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black38)),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Text("4,018",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black38)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ScrollRow(kname) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(26)),
      child: Center(
          child: Text(
        kname,
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
    );
  }
}

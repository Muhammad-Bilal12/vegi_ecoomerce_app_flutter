import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.green,
        title: Text("Home"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundColor: Colors.white24,
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundColor: Colors.white24,
              child: Icon(
                Icons.shop,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          topOfferCard(),
          headRowandViewText(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
              ],
            ),
          ),
          headRowandViewText(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                productCard(),
                productCard(),
                productCard(),
                productCard(),
                productCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding headRowandViewText() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Herbs Seasonings",
            style: TextStyle(color: Colors.grey[800]),
          ),
          Text(
            "View all",
            style: TextStyle(
              color: Colors.grey[800],
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }

  Padding topOfferCard() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1552166539-7f3691985d0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=875&q=80"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        color: Colors.green,
                      ),
                      child: const Center(
                        child: Text(
                          "Vegi",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.yellow,
                                  blurRadius: 5,
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "30% off",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          Text("On all vegetables products",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget productCard() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    height: 220,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white54,
    ),
    child: Column(
      children: [
        const Expanded(
          child: Image(
            image: NetworkImage(
                "https://e7.pngegg.com/pngimages/1020/87/png-clipart-peppermint-spearmint-graphy-leaf-leaf-food-leaf.png"),
            fit: BoxFit.fill,
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Mint Leaves",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "5\$ /50 Grm",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 5.0, top: 10, bottom: 10),
                                child: Text("50gm"),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.green,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.green,
                                  size: 15,
                                ),
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.green,
                                ),
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.green,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

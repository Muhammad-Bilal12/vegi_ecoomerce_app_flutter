import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blueAccent,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/vegilogo.png"),
                      backgroundColor: Colors.white,
                      radius: 45,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome Guest",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            customListTile(icon: Icons.home_outlined, title: "Home"),
            customListTile(
                icon: Icons.shopping_bag_outlined, title: "Review Cart"),
            customListTile(icon: Icons.person_outline, title: "Profile"),
            customListTile(
                icon: Icons.notifications_none_outlined, title: "Notification"),
            customListTile(
                icon: Icons.star_border_outlined, title: "Rating & Review"),
            customListTile(
                icon: Icons.help_center_outlined, title: "Help Center"),
            customListTile(icon: Icons.format_quote_outlined, title: "FAQ's"),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "Call Us :",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "+92 300 1234567",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: const [
                      Text(
                        "Mail US :",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "vegi.customer@email.com",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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

  ListTile customListTile({required icon, required title}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, color: Colors.white),
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

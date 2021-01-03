import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'detail.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF453E44),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.ellipsisV,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Good Morning\n",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: "Poppins",
              ),
              children: [
                TextSpan(
                  text: "Isabella",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Your Product",
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                suffixIcon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFF4CFB4),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(50.0, 50.0, 50.0, media.height * 0.1),
            margin: EdgeInsets.only(top: media.height * 0.1 - 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Detail(
                                title: "Cleanse",
                                type: "Gentle shampoo",
                                img: "cleanse_shampoo")));
                  },
                  child: Row(
                    children: [
                      Hero(
                        tag: "Cleanse",
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/images/cleanse_shampoo.jpg"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      RichText(
                        text: TextSpan(
                          text: "Cleanse\n",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: "Gentle shampoo",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Detail(
                                title: "Clarify",
                                type: "Detoxing shampoo",
                                img: "clarify_shampoo")));
                  },
                  child: Row(
                    children: [
                      Hero(
                        tag: "Clarify",
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/images/clarify_shampoo.jpg"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      RichText(
                        text: TextSpan(
                          text: "Clarify\n",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: "Detoxing shampoo",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Detail(
                                title: "Hydrate",
                                type: "Conditioner",
                                img: "hydrate_conditioner")));
                  },
                  child: Row(
                    children: [
                      Hero(
                        tag: "Hydrate",
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/images/hydrate_conditioner.jpg"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      RichText(
                        text: TextSpan(
                          text: "Hydrate\n",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: "Conditioner",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

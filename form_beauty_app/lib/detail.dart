import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Detail extends StatelessWidget {
  Detail({@required this.title, @required this.type, @required this.img});

  final String title;
  final String type;
  final String img;
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF453E44),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.ellipsisV,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Hero(
                    tag: "$title",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/$img.jpg",
                        height: media.height * 0.5,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: RichText(
                    text: TextSpan(
                      text: "$type\n",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontFamily: "Poppins",
                      ),
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:
                              "Let yours be joyous with Cleanse. Powered by a blend of fruits extracts and mild surfactants. It gently rejuvenates without stripping natural oils or drying hair out",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Starting from\n",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontFamily: "Poppins",
                    ),
                    children: [
                      TextSpan(
                        text: "\$9.00 - \$22.00",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFF4CFB4),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

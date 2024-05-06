import 'package:flutter/material.dart';
import 'package:gestion_celluleeglise/pages/cellulePage/CelluleListePage/celluleListePage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: _appTille(),
      body: ListView(
        children: [
          Container(child: _Myappbar()),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              "Recente Activites",
              style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 180, 180, 180),
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgncNQ7byukoqhXNVmINZcbgN4mlR7BBqYJOXnkUjQoQ&s",
                    "Cellule Ngaba",
                    "\$26",
                    context),
                _buildListItem(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUXrgZi8WWBFy5j3lRcWz3VZpA4xrz7Ly8X7zEHSiGPw&s",
                    "Cellule Upn",
                    "\$26",
                    context),
                _buildListItem(
                    "https://i.ytimg.com/vi/dsDAYRTqMYE/maxresdefault.jpg",
                    "Cellule Kalamu",
                    "\$26",
                    context)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 245, 252),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.lightbulb,
                          color: Colors.blue,
                        ),
                        Text('Le verset du jour')
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      ('L’Éternel est un refuge pour l’opprimé, Un refuge au temps de la détresse. Ceux qui connaissent ton nom se confient en toi. Car tu n’abandonnes pas ceux qui te cherchent, ô Éternel !'),
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.bookmark_sharp,
                          color: Colors.grey,
                        ),
                        Text('Psaumes 9:9-10')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
            child: Text(
              "Service menu",
              style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 180, 180, 180),
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GNav(
        gap: 8,
        curve: Curves.easeInOutQuint,
        activeColor: Colors.blue,
        color: Colors.grey,
        padding: EdgeInsets.all(20),
        tabMargin: EdgeInsets.only(bottom: 20, left: 2, right: 2),
        backgroundColor: Colors.white,
       
        tabBorderRadius: 0,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Acceuil',
          ),
          GButton(
            icon: Icons.add_circle,
            text: 'AJouter',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Reglage',
          ),
        ],
      ),
    );
  }

  AppBar _appTille() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Hello!',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            Text(
              'Bienvenue',
              style: TextStyle(fontSize: 27, color: Colors.white,fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(26, 124, 205, 1),
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.notification_add,
                  color: Color.fromARGB(255, 157, 193, 254),
                )))
      ],
    );
  }

  Widget _Myappbar() {
    return ClipPath(
      clipper: navBar(),
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: 150,
        color: Colors.blue,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: TextField(
                  style: TextStyle(
                      color: const Color.fromARGB(189, 255, 255, 255),
                      fontSize: 14),
                  decoration: InputDecoration(
                      //border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromARGB(113, 231, 231, 231),
                      ),
                      fillColor: Color.fromRGBO(26, 124, 205, 1),
                      filled: true,
                      hintText: 'Enter a search term',
                      hintStyle: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(113, 231, 231, 231)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.blue),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(
      String imgPath, String foodName, String price, BuildContext ctx) {
    return InkWell(
      onTap: () {
        Navigator.push(
          ctx,
          MaterialPageRoute(builder: (context) => CelluleListePage()),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    blurRadius: 6.0,
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5.0)
              ]),

          child: Stack(
            children: <Widget>[
              Container(
                height: 175.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.white,
                    Color.fromARGB(255, 196, 219, 255)
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                  image: DecorationImage(
                      image: NetworkImage(imgPath), fit: BoxFit.cover),
                ),

              ),
              Positioned(
                  top: 160.0,
                  right: 20.0,
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      child: Center(
                          child: Icon(
                        Icons.view_day,
                        color: const Color.fromARGB(255, 177, 177, 177),
                        size: 17.0,
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white),
                    ),

                  )),

              Positioned(
                  top: 190.0,
                  left: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodName,
                        style: TextStyle(
                            fontFamily: 'Monsterat',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 14.0),
                      ),

                      SizedBox(
                        height: 3.0,
                      ),

                      Container(
                        width: 180.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.grey,
                                      fontSize: 12.0),
                                ),
                              ],
                            ),

                            SizedBox(
                              width: 3.0,
                            ),

                            Icon(
                              Icons.star,
                              color: Colors.blue,
                              size: 14.0,
                            ),

                            Icon(
                              Icons.star,
                              color: Colors.blue,
                              size: 14.0,
                            ),

                            Icon(
                              Icons.star,
                              color: Colors.blue,
                              size: 14.0,
                            ),

                            Icon(
                              Icons.star,
                              color: Colors.blue,
                              size: 14.0,
                            ),

                            Icon(
                              Icons.star,
                              color: Colors.blue,
                              size: 14.0,
                            ),
                          ],
                        ),
                      ),
                      
                      Text(
                        price,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey,
                            fontSize: 12.0),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class navBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 100, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

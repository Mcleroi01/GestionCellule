import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: must_be_immutable
class CelluleListePage extends StatelessWidget {

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    background: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgncNQ7byukoqhXNVmINZcbgN4mlR7BBqYJOXnkUjQoQ&s",
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cellule Ngaba",
                          style: TextStyle(fontFamily: 'Arial', fontSize: 23,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30)),
                          child: IconButton(
                            icon: Icon(
                              Icons.message,
                              color: Colors.white,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 33, 243, 128),
                              borderRadius: BorderRadius.circular(30)),
                          child: IconButton(
                            icon:
                                Icon(Icons.call, color: Colors.white, size: 16),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0,bottom: 20),
                  child: Text(
                    "Développeur, orange digital center",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                ),

                Text(
                  ("Une église (avec un é minuscule) = un édifice où les chrétiens célèbrent leur culte. Une église romane, gothique ; aller à l'église. Église désigne le plus souvent un édifice consacré au culte catholique romain ou à un culte chrétien de rite oriental..."),
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lire plus',
                  style: TextStyle(color: Colors.blue),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(20),
                //   child: Container(
                //     child: GoogleMap(
                //       onMapCreated: _onMapCreated,
                //       initialCameraPosition: CameraPosition(
                //         target: _center,
                //         zoom: 11.0,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          )),
    );
  }
}

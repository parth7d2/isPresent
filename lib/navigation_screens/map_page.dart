import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:now_won/user_interface/font_util.dart';
import 'package:now_won/user_interface/ui_helper.dart';

import '../user_interface/custom_colors.dart';

class MapPage extends StatefulWidget {
  late final Map<String, dynamic> currentUserData;

  MapPage({super.key, required this.currentUserData});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool openSetting = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Timer? timer;

  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    loadCurrentLocation();
    // timer = Timer.periodic(
    //     const Duration(minutes: 1), (Timer t) => checkCurrentStatus());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  TextEditingController searchController = TextEditingController();
  final FocusNode searchFocus = FocusNode();

  final List<Marker> _marker = [];
  final List<Marker> _list = const [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(23.704930, 72.529628),
        infoWindow: InfoWindow(title: 'Home')),
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(23.705771, 72.529491),
        infoWindow: InfoWindow(title: 'SyamVihar')),
    Marker(markerId: MarkerId('3'), position: LatLng(23.7059552, 72.5316485)),
    Marker(markerId: MarkerId('4'), position: LatLng(23.705475, 72.535396)),
    Marker(markerId: MarkerId('5'), position: LatLng(23.706369, 72.538469)),
    Marker(markerId: MarkerId('6'), position: LatLng(23.7064201, 72.5385015)),
    Marker(markerId: MarkerId('7'), position: LatLng(23.689697, 72.540814)),
    Marker(markerId: MarkerId('8'), position: LatLng(23.686822, 72.548717)),
    Marker(markerId: MarkerId('9'), position: LatLng(23.685941, 72.549361)),
  ];

  Completer<GoogleMapController> googleController = Completer();

  // static final CameraPosition defaultPosition = const CameraPosition(target: LatLng(38.892983, -77.0495169),
  static const CameraPosition defaultPosition = CameraPosition(
    target: LatLng(23.704930, 72.529628),
    zoom: 18.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: CustomColors.surface_,
      // drawer: const NavigationDrawerr(),
      body: SafeArea(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            width: double.infinity,
            // height: 210,
            height: 110,
            decoration: const BoxDecoration(color: CustomColors.surface_),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // IconButton(
                //   icon: AnimatedIcon(
                //     icon: AnimatedIcons.menu_close,
                //     progress: controller,
                //     color: CustomColors.primary_,
                //     size: 28.0,
                //   ),
                //   onPressed: toggleIcon,
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       Text(
                //         "NOW",
                //         style: LargeTitel(),
                //       ),
                //       // InkWell(
                //       //   onTap: () {
                //       //     // showPickBox();
                //       //     Navigator.push(
                //       //         context,
                //       //         MaterialPageRoute(
                //       //             builder: (context) =>
                //       //                 ProfileScreen(currentUserData: widget
                //       //                     .currentUserData,)));
                //       //   },
                //       //   child: Hero(tag: 'Shop_Image',
                //       //       child: widget.currentUserData['Image'] == null
                //       //           ? const CircleAvatar(
                //       //         backgroundColor: CustomColors
                //       //             .surfaceContainerHigh_,
                //       //         radius: 28,
                //       //         child: Icon(
                //       //           Icons.store_mall_directory,
                //       //           size: 34.0,
                //       //           color: CustomColors.primary_,
                //       //         ),
                //       //       )
                //       //           : CircleAvatar(
                //       //         radius: 28,
                //       //         backgroundImage: NetworkImage(
                //       //             widget.currentUserData['Image'].toString()),
                //       //       )
                //       //   ),
                //       // ),
                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: 16.0,
                ),
                UiHelper.textfield(searchController, searchFocus,
                    "Search: Shop Status", Icons.search_sharp, false)
              ],
            ),
          ),
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                  child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: CustomColors.onPrimary_,
                      ),
                      child: StreamBuilder(
                        stream: FirebaseFirestore.instance.collection(
                            'Locations').snapshots(),
                        builder: (context, AsyncSnapshot<
                            QuerySnapshot> snapshot) {
                          if (!snapshot.hasData) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          List<DocumentSnapshot> documents = snapshot.data!
                              .docs;
                          Set<Marker> markers = _createMarkers(documents);
                          return GoogleMap(
                            initialCameraPosition: defaultPosition,
                            mapType: MapType.hybrid,
                            markers: markers,
                            compassEnabled: true,
                            onMapCreated: (GoogleMapController con) {
                              googleController.complete(con);
                            },
                          );
                        },
                      )
                  ),
                ),
                Positioned(
                  left: 16.0,
                  bottom: 16.0,
                  child: FloatingActionButton(
                    onPressed: () async {
                      getCurrentLocation().then((value) async {
                        print("my current location");
                        print("${value.latitude} ${value.longitude}");
                        CameraPosition cameraPosition = CameraPosition(
                          zoom: 18,
                          target: LatLng(value.latitude, value.longitude),
                        );

                        final GoogleMapController controller =
                        await googleController.future;
                        controller.animateCamera(
                            CameraUpdate.newCameraPosition(cameraPosition));
                        setState(() {});
                      });
                    },
                    child: const Icon(Icons.my_location),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Set<Marker> _createMarkers(List<DocumentSnapshot> documents) {
    Set<Marker> markers = {};

    for (var document in documents) {
      String documentId = document.id;
      double latitude = double.parse(document['Latitude']);
      double longitude = double.parse(document['Longitude']);
      bool status = document['Status'];
      BitmapDescriptor markerIcon;

      if (status) {
        markerIcon =
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen);
      } else {
        markerIcon =
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed);
      }

      Marker marker = Marker(
        markerId: MarkerId(documentId),
        position: LatLng(latitude, longitude),
        infoWindow: InfoWindow(title: documentId),
        icon: markerIcon,
      );

      markers.add(marker);
    }

    return markers;
  }

  void toggleIcon() =>
      setState(() {
        openSetting = !openSetting;
        openSetting ? controller.forward() : controller.reverse();
      });

  Future<Position> getCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      print("Error: $error");
    });
    return await Geolocator.getCurrentPosition();
  }

  loadCurrentLocation() {
    getCurrentLocation().then((value) async {
      print("my current location");
      print("${value.latitude} ${value.longitude}");
      CameraPosition cameraPosition = CameraPosition(
          zoom: 18, target: LatLng(value.latitude, value.longitude));

      final GoogleMapController controller = await googleController.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      setState(() {});
    });
  }

  double _decidedLatitude = 0.00; // Pre-defined decided latitude
  double _decidedLongitude = 0.00;

  checkCurrentStatus() {
    refresherButton().then((value) async{

      DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance.collection('Locations').doc('${widget.currentUserData['ShopName']}').get();
      // double d1 = double.parse(_textLatitude.text);
      if(snapshot.exists) {
        final Map<String, dynamic> data = snapshot.data()!;

        String latitude = data['Latitude'];
        double d1 = double.parse(latitude);
        String s1 = d1.toStringAsFixed(3);
        _decidedLatitude = double.parse(s1);

        // double d2 = double.parse(_textLongitude.text);
        // double d2 = 72.529628;
        String lognitude = data['Longitude'];
        double d2 = double.parse(lognitude);
        String s2 = d2.toStringAsFixed(3);
        _decidedLongitude = double.parse(s2);

        double d3 = value.latitude;
        String l1 = d3.toStringAsFixed(3);
        double dla = double.parse(l1);

        double d4 = value.longitude;
        String l2 = d4.toStringAsFixed(3);
        double dlo = double.parse(l2);

        bool shopStatus = false;
        shopStatus = _isLocationMatch(dla, dlo);
        var shopCollection = FirebaseFirestore.instance.collection('Locations').doc('${widget.currentUserData['ShopName']}');
        if(shopStatus){
          shopCollection.update({"Status": shopStatus}).then(
                  (value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Your Shop is Live', style:smallText(tc: Colors.white)),
                          backgroundColor: CustomColors.inverseSurface_,
                        ));
              });
        }else{
          shopCollection.update({"Status": shopStatus}).then(
                  (value) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Your Shop is Not Live', style:smallText(tc: Colors.white)),
                      backgroundColor: CustomColors.inverseSurface_,
                    ));
              });
        }


      }else{
        print('Document does not exist');
      }
    });
  }

  bool _isLocationMatch(double currentLatitude, double currentLongitude) {
    return ((currentLatitude == _decidedLatitude) &&
        (currentLongitude == _decidedLongitude));
  }

  Future<Position> refresherButton() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled){
      return Future.error("Location services are disabled.");
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if(permission==LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission==LocationPermission.denied){
        return Future.error("Location permission are denied");
      }
    }

    if(permission == LocationPermission.deniedForever){
      return Future.error("Location permissions are permanently denied");
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.bestForNavigation,
      forceAndroidLocationManager: true,
    );
  }
}


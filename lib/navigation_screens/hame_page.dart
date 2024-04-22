import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:now_won/account_screens/profile_screen.dart';
import 'package:now_won/user_interface/font_util.dart';
import 'package:now_won/user_interface/ui_helper.dart';

import '../user_interface/custom_colors.dart';

class HomePage extends StatefulWidget {
  late final Map<String, dynamic> currentUserData;
  HomePage(
      {super.key, required this.currentUserData});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool openSetting = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    loadCurrentLocation();
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  TextEditingController searchController = new TextEditingController();
  final FocusNode searchFocus = FocusNode();

  List<Marker> _marker = [];
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
  static final CameraPosition defaultPosition = const CameraPosition(
    target: LatLng(23.704930, 72.529628),
    zoom: 15.0,
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
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            width: double.infinity,
            height: 210,
            decoration: BoxDecoration(color: CustomColors.surface_),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    progress: controller,
                    color: CustomColors.primary_,
                    size: 28.0,
                  ),
                  onPressed: toggleIcon,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "NOW",
                        style: LargeTitel(),
                      ),
                      InkWell(
                          onTap: () {
                            // showPickBox();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileScreen(currentUserData: widget.currentUserData,)));
                          },
                          child: Hero(tag: 'Shop_Image',
                          child:widget.currentUserData['Image']==null? const CircleAvatar(
                            backgroundColor: CustomColors.surfaceContainerHigh_,
                            radius: 28,
                            child: Icon(
                              Icons.store_mall_directory,
                              size: 34.0,
                              color: CustomColors.primary_,
                            ),
                          ):CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(widget.currentUserData['Image'].toString()),
                          )
                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                UiHelper.textfield(searchController, searchFocus,
                    "Search: Shop Status and Item", Icons.search_sharp, false)
              ],
            ),
          ),
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: CustomColors.onPrimary_,
                    ),
                    child: GoogleMap(
                      initialCameraPosition: defaultPosition,
                      mapType: MapType.hybrid,
                      markers: Set<Marker>.of(_marker),
                      compassEnabled: true,
                      onMapCreated: (GoogleMapController con) {
                        googleController.complete(con);
                      },
                    ),
                  ),
                ),
                Positioned(
                  left: 16.0,
                  bottom: 16.0,
                  child: FloatingActionButton(
                    onPressed: () async {
                      getCurrentLocation().then((value) async {
                        print("my current location");
                        print(value.latitude.toString() +
                            " " +
                            value.longitude.toString());
                        CameraPosition cameraPosition = CameraPosition(
                          zoom: 15,
                          target: LatLng(value.latitude, value.longitude),
                        );

                        final GoogleMapController controller =
                            await googleController.future;
                        controller.animateCamera(
                            CameraUpdate.newCameraPosition(cameraPosition));
                        setState(() {});
                      });
                    },
                    child: Icon(Icons.my_location),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  void toggleIcon() => setState(() {
        openSetting = !openSetting;
        openSetting ? controller.forward() : controller.reverse();
      });

  Future<Position> getCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      print("Error: " + error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  loadCurrentLocation() {
    getCurrentLocation().then((value) async {
      print("my current location");
      print(value.latitude.toString() + " " + value.longitude.toString());
      CameraPosition cameraPosition = CameraPosition(
          zoom: 15, target: LatLng(value.latitude, value.longitude));

      final GoogleMapController controller = await googleController.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      setState(() {});
    });
  }
}

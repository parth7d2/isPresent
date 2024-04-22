// body: Stack(children: [
//   SingleChildScrollView(
//     child: Column(
//       children: [
//         Container(
//           child: Image(
//             image: AssetImage('assets/images/screenshot.png'),
//           ),
//         ),
//         Container(
//           width: double.infinity,
//           height: 300,
//           color: Colors.blue,
//         ),
//         Container(
//           width: double.infinity,
//           height: 300,
//           color: Colors.red,
//         ),
//         Container(
//           width: double.infinity,
//           height: 300,
//           color: Colors.green,
//         ),
//         Container(
//           width: double.infinity,
//           height: 300,
//           color: Colors.yellow,
//         ),
//         Container(
//           width: double.infinity,
//           height: 300,
//           color: Colors.purpleAccent,
//         ),
//         Container(
//           width: double.infinity,
//           height: 300,
//           color: Colors.grey,
//         ),
//         Container(
//           width: double.infinity,
//           height: 300,
//           color: Colors.orange,
//         ),
//       ],
//     ),
//   ),
//   FrostedGlassBox(
//     theWidth: double.infinity,
//     theHeight: 130.0,
//     theCorner: 0.0,
//     theChild: SizedBox(),
//     theOpacity: 0.7,
//     theColor: CustomColors.surface_,
//   ),
//   Positioned(
//     top: 0.0,
//     left: 0.0,
//     right: 0.0,
//     child: Padding(
//       padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 48.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 56.0,
//             height: 56.0,
//             child: Icon(Icons.history),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(28.0),
//               color: Color(0xFF3A4B3F).withOpacity(0.16),
//             ),
//           ),
//           SizedBox(
//             width: 10.0,
//           ),
//           Container(
//             width: 230.0,
//             height: 56.0,
//             child: Center(
//               child: Text(
//                 "Search",
//                 style: TextStyle(color: Colors.black54, fontSize: 24.0),
//               ),
//             ),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(28.0),
//               color: Color(0xFF3A4B3F).withOpacity(0.16),
//             ),
//           ),
//           SizedBox(
//             width: 10.0,
//           ),
//           Container(
//             width: 56.0,
//             height: 56.0,
//             child: Icon(Icons.person),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(28.0),
//               color: Color(0xFF3A4B3F).withOpacity(0.16),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
//   Positioned(
//       left: 0.0,
//       right: 0.0,
//       bottom: 120.0,
//       child: FrostedGlassBox(
//         theWidth: double.infinity,
//         theHeight: 100.0,
//         theCorner: 0.0,
//         theChild: SizedBox(),
//         theOpacity: 0.7,
//         theColor: CustomColors.surface_,
//       )),
//   Positioned(
//     left: 16.0,
//     right: 16.0,
//     bottom: 140.0,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           width: 56.0,
//           height: 56.0,
//           child: Icon(Icons.bookmark),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(28.0),
//             color: Color(0xFF3A4B3F).withOpacity(0.16),
//           ),
//         ),
//         SizedBox(
//           width: 10.0,
//         ),
//         Container(
//           width: 230.0,
//           height: 56.0,
//           child: Center(
//             child: Text(
//               "Category",
//               style: TextStyle(color: Colors.black54, fontSize: 24.0),
//             ),
//           ),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(28.0),
//             color: Color(0xFF3A4B3F).withOpacity(0.16),
//           ),
//         ),
//         SizedBox(
//           width: 10.0,
//         ),
//         Container(
//           width: 56.0,
//           height: 56.0,
//           child: Icon(Icons.notifications_active_rounded),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(28.0),
//             color: Color(0xFF3A4B3F).withOpacity(0.16),
//           ),
//         ),
//       ],
//     ),
//   ),
//
// ]),

/*
child: SvgPicture.asset(
  'assets/images/person.svg', // Optional: Set a color for the SVG
  width: 26.35, // Adjust width to fit within CircleAvatar
  height: 28.0, // Adjust height to fit within CircleAvatar
)*/

/*
body: Container(
  width: double.infinity,
  decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/jungle.jpg'),
          fit: BoxFit.cover
      )
  ),
  child: Container(
    padding: EdgeInsets.all(30),
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.3),
            ]
        )
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInDown(delay:Duration(milliseconds: 1600), animate: animate,child: Text("Find the Best Locations Near you for a Good Night.",
          style: TextStyle(color: Colors.white, fontSize: 44, fontWeight: FontWeight.w900, height: 1.1),)),
        FadeInDown(delay:Duration(milliseconds: 1200),animate: animate,child: Text("Let us find you an event for your interest",
          style: TextStyle(color: Colors.white.withOpacity(.8), fontSize: 25, fontWeight: FontWeight.w400),)),
      ],
    ),
  ),
),*/

/*
children: [Align(
alignment: Alignment.center,
child: FadeInDown(delay:Duration(milliseconds: 1200),animate: animate,child: Text("Open Now",
style: LargeTitel(size: 48))),
),
Align(
alignment: Alignment.bottomCenter,
child: FadeInDown(delay:Duration(milliseconds: 1600), animate: animate,child: Text("from",
style: Caption(size: 14, tc: Color(0xFF6F7A71)))),
),
Align(
alignment: Alignment.bottomCenter,
child: FadeInDown(delay:Duration(milliseconds: 1200),animate: animate,child: Text("Parth7D2",
style: CaptionBold(size: 18))),
),],*/

/*Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    Text(
      "Create your new account",
      style: Subhead(),
    ),
    const SizedBox(
      width: 6,
    ),
    SvgPicture.asset(
      'assets/images/one_leaf.svg',
      width: 38.17, // Set desired width
      height: 42.0, // Set desired height
    ),
  ],
),*/

/*
Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    Text(
      "Create your new account",
      style: Subhead(),
    ),
    const SizedBox(
      width: 6,
    ),
    SvgPicture.asset(
      'assets/images/one_leaf.svg',
      width: 38.17, // Set desired width
      height: 42.0, // Set desired height
    ),
  ],
),*/

/*Text("Add Product", style: smallTextBold(),),
Container(
width: double.infinity,
height: 2,
color: CustomColors.surfaceContainerHighest_,
),
Text("Add members", style: smallTextBold(),),
Container(
width: double.infinity,
height: 2,
color: CustomColors.surfaceContainerHighest_,
),*/

/*Positioned(
top:50.0,
left: 16.0,
child: Text("Shop", style: LargeTitel())),
Positioned(
bottom: 0.0,
left: 16.0,
child: Text("Add new branch", style: Subhead())),
Positioned(
top: 0.0,
right: 16.0,
child: InkWell(
onTap: () {
// showPickBox();
},
child: CircleAvatar(
backgroundColor: CustomColors.surfaceContainerHigh_,
radius: 57,
child: Icon(
Icons.add_business_rounded,
size: 48,
color: CustomColors.primary_,
// Optional: Set a color for the SVG
// width: 39.53, // Adjust width to fit within CircleAvatar
// height: 42, // Adjust height to fit within CircleAvatar
)
)),
),
Positioned(
right: 22.0,
child: SvgPicture.asset(
'assets/images/plus_circle_fill.svg', // Path to your SVG file
width: 33.0, // Set desired width
height: 33.0, // Set desired height
),
Positioned(
right: 130.0,
top: 5.0
child: SvgPicture.asset(
'assets/images/break_leaf.svg', // Path to your SVG file
width: 39.31, // Set desired width
height: 42.0, // Set desired height
),
),
*/

/*
                UiHelper.textfield(
                    website, focusNode5, "Website", Icons.launch_rounded, false),

*/

/*
SvgPicture.asset(
'assets/images/person.svg', // Optional: Set a color for the SVG
width: 39.53, // Adjust width to fit within CircleAvatar
height: 42, // Adjust height to fit within CircleAvatar
)*/

/*Stack(children: [
  SingleChildScrollView(
    child: Column(
      children: [
        Container(
          child: Image(
            image: AssetImage('assets/images/screenshot.png'),
          ),
        ),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.blue,
        ),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.red,
        ),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.green,
        ),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.yellow,
        ),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.purpleAccent,
        ),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.grey,
        ),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.orange,
        ),
      ],
    ),
  ),
  FrostedGlassBox(
    theWidth: double.infinity,
    theHeight: 130.0,
    theCorner: 0.0,
    theChild: SizedBox(),
    theOpacity: 0.7,
    theColor: CustomColors.surface_,
  ),
  Positioned(
    top: 0.0,
    left: 0.0,
    right: 0.0,
    child: Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 48.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 56.0,
            height: 56.0,
            child: Icon(Icons.history),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28.0),
              color: Color(0xFF3A4B3F).withOpacity(0.16),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            width: 230.0,
            height: 56.0,
            child: Center(
              child: Text(
                "Search",
                style: TextStyle(color: Colors.black54, fontSize: 24.0),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28.0),
              color: Color(0xFF3A4B3F).withOpacity(0.16),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            width: 56.0,
            height: 56.0,
            child: Icon(Icons.person),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28.0),
              color: Color(0xFF3A4B3F).withOpacity(0.16),
            ),
          ),
        ],
      ),
    ),
  ),
  Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 120.0,
      child: FrostedGlassBox(
        theWidth: double.infinity,
        theHeight: 100.0,
        theCorner: 0.0,
        theChild: SizedBox(),
        theOpacity: 0.7,
        theColor: CustomColors.surface_,
      )),
  Positioned(
    left: 16.0,
    right: 16.0,
    bottom: 140.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 56.0,
          height: 56.0,
          child: Icon(Icons.bookmark),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0),
            color: Color(0xFF3A4B3F).withOpacity(0.16),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          width: 230.0,
          height: 56.0,
          child: Center(
            child: Text(
              "Category",
              style: TextStyle(color: Colors.black54, fontSize: 24.0),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0),
            color: Color(0xFF3A4B3F).withOpacity(0.16),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          width: 56.0,
          height: 56.0,
          child: Icon(Icons.notifications_active_rounded),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0),
            color: Color(0xFF3A4B3F).withOpacity(0.16),
          ),
        ),
      ],
    ),
  ),

]),
Center(
  child: Text(
    'Category',
    style: LargeTitel(),
  ),
),
Center(
  child: Text(
    'Saved',
    style: LargeTitel(),
  ),
),
Center(
  child: Text(
    'Reminder',
    style: LargeTitel(),
  ),
),
Center(
  child: Text(
    'History',
    style: LargeTitel(),
  ),
),*/

/*String? getUserId() {
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    String uid = user.uid;
    return uid;
  } else {
    return null;
  }
}*/

/*setState(() {
merchantName = _currentUserData['MerchantName'];
mobNo = _currentUserData['MobNo'];
email = _currentUserData['Email'];
shopName = _currentUserData['ShopName'];
shopImage = _currentUserData['Image'];
latitude = _currentUserData['Latitude'];
longitude = _currentUserData['Longitude'];
shopStatus = _currentUserData['Status'];
}); */

/*String merchantName = "";
String mobNo = "";
String email = "";
String shopName = "";
String shopImage = "";
String latitude = "";
String longitude = "";
String phoneNo = "";
bool shopStatus = false;*/

/*final String merchantName;
final String mobNo;
final String email;
final String shopName;
final String shopImage;
final String latitude;
final String longitude;
final bool shopStatus;

const HomePage(
{super.key,
required this.merchantName,
required this.mobNo,
required this.email,
required this.shopName,
required this.shopImage,
required this.latitude,
required this.longitude,
required this.shopStatus});*/

/*Row(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
UiHelper.text_button(context,() {}, "Discard", 16),
Text(
"or",
style: smallText(size: 16),
),
UiHelper.text_button(context,() {}, "Save Draft", 16),
],
),*/

/*children: [
Row(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
height: 56.0,
child: Text(
"Manage Now Won account",
style: Headline(size: 21),
),
),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
height: 56.0,
child: Text(
"Apperance",
style: Headline(size: 21),
),
),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
height: 56.0,
child: Text(
"Feedback",
style: Headline(size: 21),
),
),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
height: 56.0,
child: Text(
"Shareapp",
style: Headline(size: 21),
),
),
],
),
SizedBox(
width: double.infinity,
height: 1.0,
child: Container(
color: CustomColors.outlineVariant_,
),
),
Row(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
height: 56.0,
child: Text(
"Terms & conditions",
style: Headline(size: 21),
),
),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
height: 56.0,
child: Text(
"Privacy Policy",
style: Headline(size: 21),
),
),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
height: 56.0,
child: Text(
"Contact us",
style: Headline(size: 21),
),
),
],
),
SizedBox(
width: double.infinity,
height: 1.0,
child: Container(
color: CustomColors.outlineVariant_,
),
),
Row(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
height: 56.0,
child: Text(
"Rate us on any Store  ",
style: Headline(size: 21),
),
),
],
),
SizedBox(
width: double.infinity,
height: 1.0,
child: Container(
color: CustomColors.outlineVariant_,
),
),
Row(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Text(
"Do you want to log out?",
style: smallText(size: 16),
),
UiHelper.text_button(context,() {
logOut();
setState(() {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
});
}, "Log out", 16)
],
),

Row(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
height: 56.0,
child: Text(
"V4.519.10000",
style: Subhead(size: 21),
),
),
],
),

],*/

/*Future.delayed(const Duration(seconds: 2),(){
});*/



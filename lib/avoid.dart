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

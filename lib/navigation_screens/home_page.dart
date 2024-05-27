import 'package:flutter/material.dart';
import 'package:now_won/user_interface/font_util.dart';

import '../account_screens/profile_screen.dart';
import '../user_interface/CategoryButton.dart';
import '../user_interface/ProductCard.dart';
import '../user_interface/ShopCard.dart';
import '../user_interface/custom_colors.dart';
import '../user_interface/ui_helper.dart';

class HomePage extends StatefulWidget{

  late final Map<String, dynamic> currentUserData;
  HomePage({super.key, required this.currentUserData});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  TextEditingController searchController = TextEditingController();
  final FocusNode searchFocus = FocusNode();

  bool openSetting = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24.0),
                bottomRight: Radius.circular(24.0)
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                width: double.infinity,
                height: 230,
                decoration: const BoxDecoration(color: CustomColors.surface_),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16.0),
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
                                      builder: (context) =>
                                          ProfileScreen(currentUserData: widget
                                              .currentUserData,)));
                            },
                            child: Hero(tag: 'Shop_Image',
                                child: widget.currentUserData['Image'] == null
                                    ? const CircleAvatar(
                                  backgroundColor: CustomColors
                                      .surfaceContainerHigh_,
                                  radius: 28,
                                  child: Icon(
                                    Icons.store_mall_directory,
                                    size: 34.0,
                                    color: CustomColors.primary_,
                                  ),
                                )
                                    : CircleAvatar(
                                  radius: 28,
                                  backgroundImage: NetworkImage(
                                      widget.currentUserData['Image'].toString()),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    UiHelper.textfield(searchController, searchFocus,
                        "Search: Nearby Products", Icons.search_sharp, false),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Row(
                        children: [
                          CategoryButton(label: 'All', isSelected: true),
                          CategoryButton(label: 'Men', isSelected: false),
                          CategoryButton(label: 'Women', isSelected: false),
                          CategoryButton(label: 'Kids', isSelected: false),
                          CategoryButton(label: 'Women', isSelected: false),
                          CategoryButton(label: 'Kids', isSelected: false),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                      width: double.infinity,
                      height: 150.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14.0)),
                        color: CustomColors.surfaceContainerHighest_,
                      ),
                      child: Center(
                        child: Text("Ads", style: Body(),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Keep shopping for", style: smallTextBold(),),
                          Text("See All", style: smallTextBold(size: 14, tc: const Color(0xFF007aff)),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 140,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ProductCard(
                            imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1999&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
                            productName: 'Round white watch',
                            price: ' ₹ 14,000',
                            wSize: 110,
                            hSize: 90,
                            titleSize: 16,
                            subTitleSize: 14,
                          ),
                          ProductCard(
                            imageUrl: 'https://images.unsplash.com/photo-1634403665443-81dc4d75843a?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
                            productName: 'iPhone 15',
                            price: ' ₹ 1,20,000',
                            wSize: 110,
                            hSize: 90,
                            titleSize: 16,
                            subTitleSize: 14,
                          ),
                          ProductCard(
                            imageUrl: 'https://images.unsplash.com/photo-1661523892192-dc872b45c290?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
                            productName: 'NoteBook',
                            price: ' ₹ 50',
                            wSize: 110,
                            hSize: 90,
                            titleSize: 16,
                            subTitleSize: 14,
                          ),
                          ProductCard(
                            imageUrl: 'https://images.unsplash.com/photo-1506543730435-e2c1d4553a84?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
                            productName: 'Plants',
                            price: ' ₹ 300',
                            wSize: 110,
                            hSize: 90,
                            titleSize: 16,
                            subTitleSize: 14,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Visited Shops", style: smallTextBold(),),
                          Text("See All", style: smallTextBold(size: 14, tc: const Color(0xFF007aff)),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ShopCard(
                            imageUrl: 'https://via.placeholder.com/150',
                            shopName: 'Shop 1',
                          ),
                          ShopCard(
                            imageUrl: 'https://via.placeholder.com/150',
                            shopName: 'Shop 2',
                          ),
                          ShopCard(
                            imageUrl: 'https://via.placeholder.com/150',
                            shopName: 'Shop 3',
                          ),
                          ShopCard(
                            imageUrl: 'https://via.placeholder.com/150',
                            shopName: 'Shop 4',
                          ),
                          ShopCard(
                            imageUrl: 'https://via.placeholder.com/150',
                            shopName: 'Shop 5',
                          ),
                          ShopCard(
                            imageUrl: 'https://via.placeholder.com/150',
                            shopName: 'Shop 6',
                          ),
                          ShopCard(
                            imageUrl: 'https://via.placeholder.com/150',
                            shopName: 'Shop 7',
                          ),
                          ShopCard(
                            imageUrl: 'https://via.placeholder.com/150',
                            shopName: 'Shop 8',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Recommended Items", style: smallTextBold(),),
                          Text("See All", style: smallTextBold(size: 14, tc: const Color(0xFF007aff)),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 110,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ProductCard(
                            imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1999&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
                            productName: 'Round white watch',
                            price: 'Samsung',
                            wSize: 90,
                            hSize: 60,
                            titleSize: 14,
                            subTitleSize: 12,
                          ),
                          ProductCard(
                            imageUrl: 'https://images.unsplash.com/photo-1634403665443-81dc4d75843a?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
                            productName: 'iPhone 15',
                            price: 'Apple',
                            wSize: 90,
                            hSize: 60,
                            titleSize: 14,
                            subTitleSize: 12,
                          ),
                          ProductCard(
                            imageUrl: 'https://images.unsplash.com/photo-1661523892192-dc872b45c290?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
                            productName: 'NoteBook',
                            price: 'Classmate eco',
                            wSize: 90,
                            hSize: 60,
                            titleSize: 14,
                            subTitleSize: 12,
                          ),
                          ProductCard(
                            imageUrl: 'https://images.unsplash.com/photo-1506543730435-e2c1d4553a84?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
                            productName: 'Plants',
                            price: 'Pujan Dairy',
                            wSize: 90,
                            hSize: 60,
                            titleSize: 14,
                            subTitleSize: 12,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }


}
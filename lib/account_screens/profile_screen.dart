import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:now_won/account_screens/manage_account_screen.dart';
import 'package:now_won/account_screens/signup_screen.dart';
import 'package:now_won/user_interface/custom_colors.dart';
import 'package:now_won/user_interface/ui_helper.dart';
import 'package:now_won/user_interface/font_util.dart';

class ProfileScreen extends StatefulWidget {

  late final Map<String, dynamic> currentUserData;

  ProfileScreen({super.key, required this.currentUserData});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final FocusNode focusNode1 = FocusNode();
  final TextEditingController shop_name = TextEditingController();

  final FocusNode focusNode2 = FocusNode();
  final TextEditingController shopkeeper_name = TextEditingController();

  final FocusNode focusNode3 = FocusNode();
  final TextEditingController email = TextEditingController();

  final FocusNode focusNode4 = FocusNode();
  final TextEditingController mob_no = TextEditingController();

  final FocusNode focusNode5 = FocusNode();
  final TextEditingController password = TextEditingController();

  // final FocusNode focusNode6 = FocusNode();
  // final TextEditingController shopkeeper_no = TextEditingController();

  logOut() async{
    FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    // final double pahodai = double.infinity;
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                    width: double.infinity,
                    height: 205,
                    child: Stack(children: [
                      Positioned(
                          top: 0.0,
                          left: 8.0,
                          child: Container(
                            width: 240.0,
                              child:widget.currentUserData['ShopName']==null?Text("Your\nName", style: LargeTitel(size: 36)):
                              Text(widget.currentUserData['ShopName'], style: LargeTitel(size: 36))
                          )
                      ),
                      Positioned(
                        top: 0.0,
                        right: 8.0,
                        child: Hero(
                          tag: 'Shop_Image',
                          child: widget.currentUserData['Image']==null? const CircleAvatar(
                              backgroundColor: CustomColors.surfaceContainerHigh_,
                              radius: 50,
                              child: Icon(Icons.store_mall_directory, size: 48, color: CustomColors.primary_,)
                          ):CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(widget.currentUserData['Image'].toString()),
                        ),
                        ),
                      ),
                      Positioned(
                        top: 117.0,
                        child:widget.currentUserData.isEmpty? UiHelper.custom_Button(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                        }, "Add Shop"):UiHelper.custom_Button(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ManageAccountScreen()));
                        }, "Add Product"),
                      ),
                      Positioned(
                        left: 31.0,
                        top: 112.0,
                        child: Container(
                          height: 28.0,
                          decoration: BoxDecoration(
                            color:widget.currentUserData['Status']==null?CustomColors.surfaceDim_: CustomColors.error_,
                            borderRadius: BorderRadius.circular(14.0),
                            border: Border.all(
                              color: Colors.white, // Border color
                              width: 2.0, // Border width
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Center(child: widget.currentUserData['Status'] == null?Text('OFFLINE', style: smallTextBold(size: 12.0, tc:CustomColors.neutral_variant10),): Text('LIVE', style: smallTextBold(size: 12.0, tc:Colors.white),)),
                          ),
                        )
                      ),
                      Positioned(
                        right: 17.0,
                        bottom: 70.0,
                        child: SvgPicture.asset(
                          'assets/images/two_leaf.svg', // Path to your SVG file
                          width: 33.0, // Set desired width
                          height: 42.0, // Set desired height
                        ),
                      ),
                    ])),
                Padding(
                  padding: const EdgeInsets.only(top:3.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: CustomColors.surfaceContainerLow_
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 8.0, right: 8.0, bottom: 16.0, ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Icon(Icons.store_mall_directory,size: 28, color: CustomColors.primary_,),
                            title: Text('Manage Account', style: Headline(size: 21,tc: CustomColors.neutral_variant10),),
                            subtitle: Text('Operate Members, Manage Products, Edit Info, Logout and Delete Account', style: smallText(tc: CustomColors.onSurfaceVariant_, size: 14)),
                            trailing: Icon(Icons.navigate_next,size:24, color: CustomColors.primary_,),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ManageAccountScreen()));
                            },
                          ),
                          const Divider(height: 0,color: CustomColors.outlineVariant_,),
                          ListTile(
                            leading: Icon(Icons.settings,size: 28, color: CustomColors.primary_,),
                            title: Text('Settings', style: Headline(size: 21, tc: CustomColors.neutral_variant10),),
                            subtitle: Text('Apparence, Term and Condition, Privacy Policy and Notification Settings',style: smallText(tc:CustomColors.onSurfaceVariant_, size: 14),),
                            trailing: Icon(Icons.navigate_next,size:24, color: CustomColors.primary_,),
                          ),
                          const Divider(height: 0, color: CustomColors.outlineVariant_,),
                          ListTile(
                            leading: Icon(Icons.call,size: 28,color: CustomColors.primary_,),
                            title: Text('Contact Us', style: Headline(size: 21, tc: CustomColors.neutral_variant10),),
                            subtitle: Text('Help, Give Feedback, Submit BugReport', style: smallText(tc:CustomColors.onSurfaceVariant_, size: 14),),
                            trailing: Icon(Icons.navigate_next,size:24, color: CustomColors.primary_,),
                          ),
                          const Divider(height: 0,color: CustomColors.outlineVariant_,),
                          ListTile(
                            leading: Icon(Icons.share,size: 28, color: CustomColors.primary_,),
                            title: Text('ShareApp', style: Headline(size: 21, tc: CustomColors.neutral_variant10),),
                            subtitle: Text('Please, Share this App with your Friends and Family', style: smallText(tc: CustomColors.onSurfaceVariant_,size: 14),),
                            trailing: const Icon(Icons.arrow_outward,size:20, color: CustomColors.primary_,),
                          ),
                          const Divider(height: 0, color: CustomColors.outlineVariant_,),
                          ListTile(
                            leading: Icon(Icons.star_rate, size: 28, color:CustomColors.primary_,),
                            title: Text('Rate Us', style: Headline(size: 21,tc:CustomColors.neutral_variant10),),
                            subtitle: Text('Please rate us on PlayStore or AppStore, which can help others to know this app', style: smallText(tc:CustomColors.onSurfaceVariant_, size: 14),),
                            trailing: Icon(Icons.arrow_outward,size:20, color: CustomColors.primary_,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "V4.519.10000",
                                style: Subhead(size: 18, tc: CustomColors.onSurfaceVariant_),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            )),
      ),
    );
  }


}

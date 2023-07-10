// import 'dart:js_interop';

import 'package:bootcamp_starter/core/extensions/sized_box_extension.dart';
import 'package:bootcamp_starter/core/widgets/app_button_widget.dart';
import 'package:bootcamp_starter/core/widgets/app_text.dart';
import 'package:bootcamp_starter/features/profile/widgets/card_infromation.dart';
import 'package:bootcamp_starter/features/profile/widgets/links_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// class ProfileView extends StatelessWidget {
//   static String id = '/profileView';
//
//   const ProfileView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     var isUser = ModalRoute.of(context)?.settings.arguments as Map;
//     // print(isUser);
//     return Scaffold(
//       appBar:isUser['isUser']!=null ?isUser['isUser']==null?  AppBar(
//         centerTitle: true,
//         title: AppText(
//           text: isUser['username'],
//           fontSize: 24.sp,
//           color: Color(0xff2D2B4E),
//           fontWeight: FontWeight.bold,
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {},
//           icon: const Icon(
//             Icons.arrow_back_ios,
//             color: Color(0xff2D2B4E),
//           ),
//         ),
//
//       ) : null : null,
//
//
//         body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     // padding: EdgeInsets.symmetric(horizontal: 16.w),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12.r),
//                       color: Color(0xff2D2B4E),
//                     ),
//                     height: 150.h,
//                     child: Row(
//                       children: [
//                         Container(
//                           decoration: const BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.white,
//                           ),
//                           width: 87.5.w,
//                           height: 87.5.h,
//                         ),
//                         16.0.pw(),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             16.0.ph(),
//                             AppText(
//                               text: 'hussendev',
//                               fontSize: 16.sp,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             6.0.ph(),
//                             AppText(
//                               text: ' ghabayenhussej@gmail.com',
//                               fontSize: 12.sp,
//                               color: Colors.white,
//                             ),
//                             6.0.ph(),
//                             AppText(
//                               text: '0592197258',
//                               fontSize: 12.sp,
//                               color: Colors.white,
//                             ),
//                             5.ph(),
//                             Row(
//                               children: [
//                                 AppButton(
//                                   text: 'followers 203',
//                                   onPressed: () {},
//                                   color: Color(0xffFFD465),
//                                   // textColor: Color(0xff2D2B4E),
//                                   width: 60.w,
//                                   height: 24.h,
//                                   fontSize: 8.sp,
//                                 ),
//                                 5.pw(),
//                                 AppButton(
//                                   text: 'following 100',
//                                   onPressed: () {},
//                                   color: Color(0xffFFD465),
//                                   // textColor: Color(0xff2D2B4E),
//                                   width: 60.w,
//                                   height: 24.h,
//                                   fontSize: 8.sp,
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     top: 15,
//                     right: 15,
//                     child: Container(
//                       width: 24.w,
//                       height: 24.h,
//                       child: Icon(
//                         Icons.mode_edit_outline_outlined,
//                         color: Colors.white,
//                         size: 24.sp,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               30.0.ph(),
//               Expanded(
//                 child: ListView.separated(
//                   physics: BouncingScrollPhysics(),
//                   itemBuilder: (context, index) {
//                     return LinksWidget(index:   index,);
//                   },
//                   separatorBuilder: (context, index) {
//                     return 10.ph();
//                   },
//                   itemCount: 10,
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }


class ProfileView extends StatefulWidget {
  static String id = '/profileView';

   ProfileView({super.key,required this.isUser,required this.username});

  bool isUser = false;
  String username = '';

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  @override
  void initState() {
    // TODO: implement initState


    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    print(widget.isUser);
    return Scaffold(
        appBar:widget.isUser ?  AppBar(
          centerTitle: true,
          title: AppText(
            text: widget.username,
            fontSize: 24.sp,
            color: Color(0xff2D2B4E),
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff2D2B4E),
            ),
          ),

        ) : null,


        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardInformation(isUser: widget.isUser,),
              30.0.ph(),
              Expanded(
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return widget.isUser? LinksUserWidget(index: index) : LinksWidget(index:   index,);
                  },
                  separatorBuilder: (context, index) {
                    return 10.ph();
                  },
                  itemCount: 10,
                ),
              )
            ],
          ),
        ));
  }
}





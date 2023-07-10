import 'package:bootcamp_starter/core/extensions/sized_box_extension.dart';
import 'package:bootcamp_starter/core/util/constants.dart';
import 'package:bootcamp_starter/core/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  static String id = '/homeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kScaffoldColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
                text: 'Hello, Hussen',
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            34.0.ph(),
            GestureDetector(
              onLongPress: (){
                //TODO: enable sharing
              },
              onTap: (){
                //TODO: enable sharing
              },
              child:  SizedBox(
                height: 341.58.h,
                width: 317.72.w,
                child: Image.asset(
                  'assets/imgs/QR Code.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
            ,
            34.0.ph(),
            SizedBox(
              height: 116.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => index == 2
                    ? Container(
                  width: 116.w,
                  height: 79.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color(0xffE7E5F1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      const  Icon(
                        Icons.add,
                        size: 30,
                        color: Color(0xff2D2B4E),
                      ),
                      11.0.ph(),
                      AppText(
                        text: 'ADD',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color:const Color(0xff2D2B4E),
                      ),
                    ],
                  ),
                )
                    : Container(
                  width: 116.w,
                  height: 79.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color(0xffFFE6A6),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                          text: 'FACEBOOK',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color:const Color(0xff784E00)),
                      11.0.ph(),
                      AppText(
                        text: '@hussendev',
                        fontSize: 13.sp,
                        color:const Color(0xff784E00),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => 24.0.pw(),
                itemCount: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*

return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          // CustomButton(onPress: (){}, title: title)
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.qr_code_scanner_sharp, color: Colors.black)),
        ],
        title: const Text('Home Screen'),
      ),
      backgroundColor: kScaffoldColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                    text: 'Hello, Hussen',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                34.0.ph(),
               GestureDetector(
                 onLongPress: (){
                   //TODO: enable sharing
                 },
                 onTap: (){
                   //TODO: enable sharing
                 },
                 child:  SizedBox(
                   height: 341.58.h,
                   width: 317.72.w,
                   child: Image.asset(
                     'assets/images/QR Code.png',
                     fit: BoxFit.cover,
                   ),
                 ),
               )
               ,
                34.0.ph(),
                SizedBox(
                  height: 116.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => index == 2
                        ? Container(
                            width: 116.w,
                            height: 79.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: const Color(0xffE7E5F1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                const  Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Color(0xff2D2B4E),
                                ),
                                11.0.ph(),
                                AppText(
                                  text: 'ADD',
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color:const Color(0xff2D2B4E),
                                ),
                              ],
                            ),
                          )
                        : Container(
                            width: 116.w,
                            height: 79.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: const Color(0xffFFE6A6),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(
                                    text: 'FACEBOOK',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color:const Color(0xff784E00)),
                                11.0.ph(),
                                AppText(
                                  text: '@hussendev',
                                  fontSize: 13.sp,
                                  color:const Color(0xff784E00),
                                ),
                              ],
                            ),
                          ),
                    separatorBuilder: (context, index) => 24.0.pw(),
                    itemCount: 3,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 24.h,
            child: Container(
              height: 60.h,
              width: 310.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(47.r),
                color: const Color(0xff2D2B4E),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      // context.read<BottomNavCubit>().changeIndex(0);
                    },
                    child: const Icon(
                      Icons.share_location,
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        // context.read<BottomNavCubit>().changeIndex(1);
                      },
                      child: const Icon(
                        Icons.home_filled,
                        color: Colors.white,
                      )),
                  InkWell(
                    onTap: () {
                      // context.read<BottomNavCubit>().changeIndex(2);
                    },
                    child: const Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
 */
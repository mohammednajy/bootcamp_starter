import 'package:bootcamp_starter/core/extensions/sized_box_extension.dart';
import 'package:bootcamp_starter/core/widgets/app_button_widget.dart';
import 'package:bootcamp_starter/core/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardInformation extends StatelessWidget {
  CardInformation({
    super.key,
    this.isUser = false,
  });
  bool isUser;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: Color(0xff2D2B4E),
          ),
          height: 150.h,
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                width: 87.5.w,
                height: 87.5.h,
              ),
              16.0.pw(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.0.ph(),
                  AppText(
                    text: 'hussendev',
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  6.0.ph(),
                  AppText(
                    text: ' ghabayenhussej@gmail.com',
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                  6.0.ph(),
                  AppText(
                    text: '0592197258',
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                  5.ph(),
                  isUser
                      ? AppButton(
                          text: 'Follow',

                          onPressed: () {},
                          backgroundColor: Color(0xffFFD465),
                          // textColor: Color(0xff2D2B4E),
                          width: 60.w,
                          height: 24.h,
                          fontSize: 8.sp,
                        )
                      : Row(
                          children: [
                            AppButton(
                              text: 'followers 203',
                              onPressed: () {},
                              backgroundColor: Color(0xffFFD465),
                              // textColor: Color(0xff2D2B4E),
                              width: 60.w,
                              height: 24.h,
                              fontSize: 8.sp,
                            ),
                            5.pw(),
                            AppButton(
                              text: 'following 100',
                              onPressed: () {},
                              backgroundColor: Color(0xffFFD465),
                              // textColor: Color(0xff2D2B4E),
                              width: 60.w,
                              height: 24.h,
                              fontSize: 8.sp,
                            ),
                          ],
                        )
                ],
              ),
            ],
          ),
        ),
        isUser
            ? SizedBox()
            : Positioned(
                top: 15,
                right: 15,
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  child: IconButton(
                    icon: Icon(
                      Icons.mode_edit_outline_outlined,
                      color: Colors.white,
                      size: 24.sp,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/editProfile');
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => EditProfileView(),
                      //   ),
                      // );
                    },
                    padding: EdgeInsets.zero,
                    color: Colors.white,
                    // size: 24.sp,
                  ),
                ),
              ),
      ],
    );
  }
}

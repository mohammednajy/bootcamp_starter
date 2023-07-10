import 'package:bootcamp_starter/core/extensions/sized_box_extension.dart';
import 'package:bootcamp_starter/core/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../profile/profile_view.dart';

class PersonWidget extends StatelessWidget {
  const PersonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, ProfileView.id,arguments: {
        //   'isUser':true,
        //   'username':'Username',
        // });
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileView(isUser: true,username: 'Username',)));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          color: Color(0xffE7E5F1),
        ),
        height: 48.h,
        child: Row(
          children: [
            const    Icon(Icons.person),
            12.0.pw(),
            AppText(
              text: 'Username',
              fontSize: 14.sp,
              color: Color(0xff2D2B4E),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:bootcamp_starter/core/extensions/sized_box_extension.dart';
import 'package:bootcamp_starter/core/widgets/app_text.dart';
import 'package:bootcamp_starter/features/profile/add_or_edit_link_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class LinksWidget extends StatelessWidget {
  LinksWidget({
    required this.index,
    super.key,
  });
  int index;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(index),
      // closeOnScroll: true,
      direction: Axis.horizontal,
      dragStartBehavior: DragStartBehavior.down,
      enabled: true,
      startActionPane: ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: ScrollMotion(),
        // All actions are defined in the children parameter.
        children: [
          SlidableAction(
            borderRadius: BorderRadius.circular(12.r),
            onPressed: null,
            spacing: 10,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
          ),
          SlidableAction(
            borderRadius: BorderRadius.circular(12.r),
            padding: EdgeInsets.all(10.w),
            onPressed: (context) {
              // Navigator.pushNamed(context, '/editLinkView');
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>AddOrEditLinksView(isEdit: true,)));
            },
            backgroundColor: Color(0xFFFFD465),
            foregroundColor: Colors.white,
            icon: Icons.edit,
          ),
        ],
      ),

      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: Color(0xffFEE2E7),
        ),
        height: 58.h,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: 'Instagram',
              fontSize: 14.sp,
              color: Color(0xff783341),
            ),
            4.ph(),
            AppText(
              text: 'https://www.instagram.com/its_hussen/',
              fontSize: 14.sp,
              color: Color(0xff783341),
            ),
          ],
        ),
      ),
    );
  }
}


class LinksUserWidget extends StatelessWidget {
  LinksUserWidget({
    required this.index,
    super.key,
  });
  int index;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Color(0xffFEE2E7),
      ),
      height: 58.h,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: 'Instagram',
            fontSize: 14.sp,
            color: Color(0xff783341),
          ),
          4.ph(),
          AppText(
            text: 'https://www.instagram.com/its_hussen/',
            fontSize: 14.sp,
            color: Color(0xff783341),
          ),
        ],
      ),
    );
  }
}
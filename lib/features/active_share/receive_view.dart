import 'package:bootcamp_starter/core/extensions/sized_box_extension.dart';
import 'package:bootcamp_starter/core/widgets/app_text.dart';
import 'package:bootcamp_starter/features/active_share/widgets/person_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReceiveView extends StatelessWidget {
  static String id = '/receiveView';

  const ReceiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: 'Active Sharing',
                fontSize: 24.sp,
                color: Color(0xff2D2B4E),
                fontWeight: FontWeight.bold,
              ),
              40.0.ph(),
              Image.asset('assets/imgs/Frame 8.png'),
              34.18.ph(),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return  const PersonWidget();
                  },
                  separatorBuilder:(context, index) => 9.ph() ,
                  itemCount: 10,
                ),
              )

            ],
          ),
        )
    );
  }
}



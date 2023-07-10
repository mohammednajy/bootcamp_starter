import 'package:bootcamp_starter/core/extensions/sized_box_extension.dart';
import 'package:bootcamp_starter/core/widgets/app_button_widget.dart';
import 'package:bootcamp_starter/core/widgets/app_text.dart';
import 'package:bootcamp_starter/core/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// class EditLinksView extends StatelessWidget {
//
//
//
//
// }

class AddOrEditLinksView extends StatefulWidget {
   AddOrEditLinksView({super.key,this.isEdit = false});
  bool isEdit ;
  @override
  State<AddOrEditLinksView> createState() => _AddOrEditLinksViewState();
}

class _AddOrEditLinksViewState extends State<AddOrEditLinksView> {
  static String id = '/editLinkView';

  late TextEditingController titleLinkController;
  late TextEditingController urlLinkLinkController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    titleLinkController = TextEditingController(text: widget.isEdit ? 'instagtam' : '');
    urlLinkLinkController = TextEditingController(text:widget.isEdit ? 'instagram.com/its._.hussen' : '');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffE7E5F1),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: AppText(text:widget.isEdit? 'Edit' : 'Add Links', fontSize: 16.sp, color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 43.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              70.ph(),
              AppTextField(
                controller: titleLinkController,
                label: 'title',
                hintText: 'Snapchat',
                textInputType: TextInputType.name,
                validate: (p0) {},
              ),
              20.ph(),
              AppTextField(
                controller: urlLinkLinkController,
                label: 'link',
                hintText: 'http:\\www.Example.com',
                textInputType: TextInputType.name,
                validate: (p0) {},
              ),
              41.ph(),

              AppButton(onPressed: (){}, text:widget.isEdit? 'SAVE' : 'ADD',width: 138.w,height: 50.h,backgroundColor: Color(0xffFFD465),textColor: Color(0xff784E00),)

            ],
          ),
        ),
      ),
    );
  }
}


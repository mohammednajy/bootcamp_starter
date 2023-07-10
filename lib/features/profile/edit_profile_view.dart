import 'package:bootcamp_starter/core/extensions/sized_box_extension.dart';
import 'package:bootcamp_starter/core/widgets/app_button_widget.dart';
import 'package:bootcamp_starter/core/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfile extends StatelessWidget {
   static String id = '/editProfile';
   EditProfile({Key? key}) : super(key: key);
   final TextEditingController nameController = TextEditingController(text: 'hussen');
   final TextEditingController emailController = TextEditingController(text: 'hussen@gmail');
   final TextEditingController phoneController = TextEditingController(text: '0592197258');

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
         title: Text(
           'Edit User Info',
           style: TextStyle(
             color: Theme.of(context).primaryColor,
           ),
         ),
       ),
       body: SingleChildScrollView(
         child: Padding(
           padding: EdgeInsets.symmetric(horizontal: 43.w),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               40.ph(),
               Center(
                 child: Container(
                   height: 187.h,
                   width: 187.h,
                   decoration: const BoxDecoration(
                     color: Color(0xffE7E5F1),
                     shape: BoxShape.circle,
                     // image: DecorationImage(
                     //   image: AssetImage('images/dummy_image/person.png'),
                     //   fit: BoxFit.fill,
                     // ),
                   ),
                 ),
               ),
               30.ph(),
               AppTextField(
                 controller: nameController,
                 label: 'name',
                 hintText: '',
                 textInputType: TextInputType.name,
                 validate: (p0) {},
               ),
               20.ph(),
               AppTextField(
                 controller: emailController,
                 label: 'email',
                 hintText: '',
                 textInputType: TextInputType.name,
                 validate: (p0) {},
               ),
               20.ph(),
               AppTextField(
                 controller: phoneController,
                 label: 'phone',
                 hintText: '',
                 textInputType: TextInputType.name,
                 validate: (p0) {},
               ),
               41.ph(),

               AppButton(onPressed: (){}, text: 'SAVE',width: 138.w,height: 50.h,backgroundColor: Color(0xffFFD465),)
               // SizedBox(
               //   width: 138.w,
               //   height: 50.h,
               //   child: ElevatedButtonWidget(
               //     text: 'SAVE',
               //     textColor: const Color(0xff784E00),
               //     onPressed: () {},
               //   ),
               // ),
             ],
           ),
         ),
       ),
     );
   }
}
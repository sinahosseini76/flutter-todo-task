import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/widgets/textfiled_widget.dart';

import '../widgets/button_widget.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration:const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/addtask1.jpg"
            )
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 60,),
                IconButton(onPressed: (){},
                  icon: Icon(Icons.arrow_back),
                  color: AppColors.secondaryColor,
                ),
              ],
            ),
            Column(
              children: [
                TextFieldWidget(textController: nameController, hintText: "Task name"),
                const SizedBox(height: 20,),
                TextFieldWidget(textController: detailController, hintText: "Task details", borderRadius: 15, maxLine: 4,),
                const SizedBox(height: 20,),
                ButtonWidget(
                    backgroundColor: AppColors.mainColor,
                    text: "Add",
                    textColor: Colors.white
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/6,),
          ],
        ),
      ),
    );
  }
}

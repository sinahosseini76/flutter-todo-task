import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myData = [
      "try harder",
      "ssss",
      "ssss",
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20,top: 60),
            alignment: Alignment.topLeft,
            child: Icon(Icons.arrow_back, color: AppColors.secondaryColor,),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height/3.2,
            decoration:const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:  AssetImage(
                        "assets/header1.jpg"
                    )
                )
            ),

          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Icon(Icons.home, color: AppColors.secondaryColor,size: 30,),
                SizedBox(width: 10,),
                Container(
                  child: Icon(Icons.add,color: Colors.white,size: 20,),
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.black
                  ),
                ),
                Expanded(child: Container()),
                Icon(Icons.calendar_month_sharp, color: AppColors.secondaryColor,size: 30,),
                SizedBox(width: 10,),
                Text("2", style: TextStyle(
                  fontSize: 20,
                  color:  AppColors.secondaryColor
                ))
              ],
            ),
          ),
          Flexible(
              child: ListView.builder(
                  itemCount: myData.length,
                  itemBuilder: (context, index){
                return Container(
                  margin: const EdgeInsets.only(left: 20, right: 20,bottom: 10),
                  child: TaskWidget(
                    text: myData[index], color: Colors.blueGrey,
                  ),
                );
              }),
          ),
        ],
      ),
    );
  }
}

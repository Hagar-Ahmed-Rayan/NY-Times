import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newyork_times/core/shared_functions.dart';
import 'package:newyork_times/newyork_times/data/models/most_popular_model/MostPopularModel.dart';
import 'package:newyork_times/newyork_times/domin/entities/most_popular_entity.dart';
import 'package:newyork_times/newyork_times/presentation/controller/most_popular_bloc.dart';
import 'package:newyork_times/newyork_times/presentation/controller/most_popular_states.dart';
import 'package:newyork_times/newyork_times/presentation/screens/newyork_times_details_screen.dart';



class MostPopularItem extends StatelessWidget {
  const MostPopularItem({super.key, required this.item});

  final Results item;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,);
    return BlocBuilder<MostPopularBloc, MostPopularState>(
        builder:(context, state){

          return Padding(
            padding:  EdgeInsets.symmetric(horizontal:10.0.w,vertical: 10.h),
            child: GestureDetector(
              onTap: (){
                navTo(context,  MostPopularDetailsScreen(item:item));


              },
              child: Stack(
                children: [
                  Container(
                     height: 110.h,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 5.0.w,vertical: 15.h),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Container(
                              width: 75.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg'

                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 14.w),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [


                              Container(
                                width: 185.w,
                                child: Text('${item.title}',
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontSize: 12.sp,

                                      fontWeight: FontWeight.bold,
                                    ),

                                  //  Styles.textStyle10,

                                ),
                              ),
                              SizedBox(height: 6.h,),
                              Container(
                                width: 185.w,

                                child: Text('${item.byline}',
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Colors.grey
                                  )

                                ),
                              ),



                            ],),
                          SizedBox(width: 8.w,),

                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                            },
                          ),
                        ],
                      ),




                    ),
                  ),
                  Positioned(
                  bottom: 0.0,
                  right: 65.w,
                    child: Row(
                      children: [
                          Icon(Icons.calendar_month_sharp,
                            color: Colors.grey,
                            size: 20.sp,
                          ),
                    Text('${item.publishedDate}',

                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11.sp

                      ),

                        )



                      ],
                    ),
                  )
                ],
              ),
            ),
          );}


    );
  }
}
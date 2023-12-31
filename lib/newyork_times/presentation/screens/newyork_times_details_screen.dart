import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newyork_times/core/app_colors.dart';
import 'package:newyork_times/core/app_font.dart';
import 'package:newyork_times/core/loading_widget.dart';
import 'package:newyork_times/newyork_times/domin/entities/most_popular_entity/results_entity.dart';
import 'package:newyork_times/newyork_times/presentation/widgets/get_media_image.dart';

class MostPopularDetailsScreen extends StatelessWidget {
  const MostPopularDetailsScreen({super.key, required this.item});

  final Results item;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      minTextAdapt: true,
      splitScreenMode: true,
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: Center(
            child: Text('NY Times Most popular', style: Styles.textStyle20),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        body: (item != null)
            ? SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Column(
                    children: [
                      Text('${item.title}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold)
                          //Styles.textStyle10,

                          ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Text('${item.abstract}',
                          style: TextStyle(color: Colors.grey)
                          //Styles.textStyle10,

                          ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text('${item.byline}',
                                overflow: TextOverflow.ellipsis,
                                style: Styles.textStyle11),
                          ),
                          Spacer(),
                          Text('${item.publishedDate}',
                              style: Styles.textStyle11)
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      GetMediaImage(item: item),
                      Text('Source: ${item.source}', style: Styles.textStyle11),
                      SizedBox(
                        height: 8.h,
                      ),
                      (item.media != null &&
                              item.media!.isNotEmpty &&
                              item.media![0].caption != null &&
                              item.media![0].caption != "")
                          ? Text(item.media![0].caption!)
                          : Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry  standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                            ),
                    ],
                  ),
                ),
              )
            : CustomLoadingIndicator());
  }
}

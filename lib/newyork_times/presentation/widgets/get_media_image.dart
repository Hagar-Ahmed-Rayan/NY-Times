import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newyork_times/core/app_colors.dart';
import 'package:newyork_times/newyork_times/domin/entities/most_popular_entity/results_entity.dart';
import 'package:newyork_times/newyork_times/presentation/widgets/cached_image_widget.dart';

class GetMediaImage extends StatelessWidget {
  const GetMediaImage({super.key, required this.item});

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
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.0.w),
        child: (item.media != null &&
                item.media!.isNotEmpty &&
                item.media![0].mediametadata != null &&
                item.media![0].mediametadata!.isNotEmpty &&
                item.media![0].mediametadata!.length == 3 &&
                item.media![0].mediametadata![2] != null)
            ? ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: RoundedCachedImageWidget(
                  imageUrl: item.media![0].mediametadata![2].url!,
                  width: 360.0.w,
                  height: 270.0.h,
                  borderRadius: BorderRadius.circular(20.0.r),
                ))
            : Container(
                width: 430.w,
                height: 260.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                  color: Colors.grey,
                ),
                child: Center(
                    child: Icon(
                  Icons.error_outline,
                  color: AppColors.primaryColor,
                  size: 48.0.r,
                )),
              ));
  }
}

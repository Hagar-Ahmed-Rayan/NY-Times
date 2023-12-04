import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newyork_times/core/app_colors.dart';
import 'package:newyork_times/core/service_locator.dart';
import 'package:newyork_times/newyork_times/data/repository/most_popular_repository.dart';
import 'package:newyork_times/newyork_times/domin/usecases/get_mostpopular_usecase.dart';
import 'package:newyork_times/newyork_times/presentation/manager/most_popular_cubit.dart';
import 'package:newyork_times/newyork_times/presentation/manager/most_popular_states.dart';
import 'package:newyork_times/newyork_times/presentation/widgets/most_popular_item.dart';

class MostPopularScreen extends StatelessWidget {
  const MostPopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      minTextAdapt: true,
      splitScreenMode: true,
    );
    return BlocProvider(
      create: (BuildContext context) {
        return MostPopularCubit(
          GetPopularUsecase(
            getIt.get<MostPopularRepository>(),
          ),
        )..fetchMostPopular();
      },
      child: BlocBuilder<MostPopularCubit, MostPopularState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.primaryColor,
              title: Center(
                child: Text('NY Times Most popular',
                    style: TextStyle(color: Colors.white, fontSize: 18.sp)),
              ),
              leading: Icon(
                FontAwesomeIcons.bars,
                size: 25.sp,
                // Icons.list,
                color: Colors.white,
              ),
              actions: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 5.0),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            body: (state is MostPopularSuccessState &&
                    state.mostPopular != null &&
                    state.mostPopular?.results?.isEmpty == false)
                ? Container(
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return MostPopularItem(
                            item: state.mostPopular.results![index],
                          );
                        },
                        itemCount: state.mostPopular.results!.length),
                  )
                : SizedBox(
                    height: 400.0.h,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
          );
        },
      ),
    );
  }
}

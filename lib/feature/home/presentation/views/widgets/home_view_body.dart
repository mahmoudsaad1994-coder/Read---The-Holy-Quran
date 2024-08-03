import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constans.dart';
import '../manager/app_cubit.dart';
import '../manager/app_states.dart';
import 'home_appbar.dart';
import 'list_tile_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return SafeArea(
          child: Scaffold(
            appBar: appBar(
              context: context,
              cubit: cubit,
              title: 'الُِقٌرٍآن الُِڪرٍيم',
              isHome: true,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .04),
              child: ListView.separated(
                itemCount: cubit.surahList.length,
                itemBuilder: (context, index) => ListTileWidget(
                  cubit: cubit,
                  index: index,
                ),
                separatorBuilder: (context, index) => Divider(
                  color: cubit.isdark ? k7B80AD : kBBC4CE,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

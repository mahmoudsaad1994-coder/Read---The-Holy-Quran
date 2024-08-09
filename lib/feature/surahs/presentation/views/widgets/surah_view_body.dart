import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/quran.dart' as quran;

import '../../../../../constans.dart';
import '../../../../layout_view.dart/presentation/views/manager/app_cubit.dart';
import '../../../../layout_view.dart/presentation/views/manager/app_states.dart';
import 'list_tile_widget.dart';

class SurahViewBody extends StatelessWidget {
  const SurahViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return SafeArea(
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .04),
              child: ListView.separated(
                itemCount: quran.totalSurahCount,
                itemBuilder: (context, index) => ListTileWidget(
                  surahNumber: index + 1,
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

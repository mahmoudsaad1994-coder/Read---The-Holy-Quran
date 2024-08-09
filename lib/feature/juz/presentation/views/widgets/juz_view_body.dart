import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/quran.dart' as quran;

import '../../../../../constans.dart';
import '../../../../layout_view.dart/presentation/views/manager/app_cubit.dart';
import '../../../../layout_view.dart/presentation/views/manager/app_states.dart';
import 'list_tile_widget.dart';

class JuzViewBody extends StatelessWidget {
  const JuzViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .04),
          child: ListView.separated(
            itemCount: quran.totalJuzCount,
            itemBuilder: (context, index) => ListTileWidget(
              juzNumber: index + 1,
              cubit: cubit,
            ),
            separatorBuilder: (context, index) => Divider(
              color: cubit.isdark ? k7B80AD : kBBC4CE,
            ),
          ),
        );
      },
    );
  }
}

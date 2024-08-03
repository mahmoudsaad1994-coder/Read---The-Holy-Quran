import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constans.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/functions/revelation_type.dart';
import '../manager/app_cubit.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.index, required this.cubit});
  final int index;
  final AppCubit cubit;
  @override
  Widget build(BuildContext context) {
    var surah = cubit.surahList[index];
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListTile(
          onTap: () {
            cubit.getSurahAyahs(surah.number).then((onValue) {
              GoRouter.of(context).push(
                AppRouter.kSurahInfoView,
                extra: surah.name,
              );
            });
          },
          title: Text(
            surah.name,
            style: TextStyle(
              color: k863ED5,
              fontWeight: FontWeight.bold,
              fontSize: constraints.maxWidth * .045,
            ),
          ),
          leading: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                AssetsData.ayahIcon,
                height: constraints.maxWidth * .1,
              ),
              Text(
                surah.number.toString(),
                style: TextStyle(
                  color: k863ED5,
                  fontWeight: FontWeight.bold,
                  fontSize: constraints.maxWidth * .036,
                ),
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Text(
                getRevelationType(surah.revelationType),
                style: TextStyle(
                  color: k8789A3,
                  fontSize: constraints.maxWidth * .04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: constraints.maxWidth * .02),
              Text(
                'عدد الآيات : ${surah.numberOfAyahs}',
                style: TextStyle(
                  color: k8789A3,
                  fontSize: constraints.maxWidth * .04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          contentPadding: EdgeInsets.zero,
        );
      },
    );
  }
}

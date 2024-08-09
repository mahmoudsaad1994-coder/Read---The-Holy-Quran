import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constans.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../data.dart';
import '../../../../layout_view.dart/presentation/views/manager/app_cubit.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {super.key, required this.juzNumber, required this.cubit});
  final int juzNumber;
  final AppCubit cubit;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListTile(
          onTap: () {
            cubit.getJuz(juzNumber: juzNumber);
            GoRouter.of(context).push(
              AppRouter.kjuzInfoView,
              extra: juzNumber,
            );
          },
          title: Text(
            "الجزء ${numbArb[juzNumber - 1]}",
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
                '$juzNumber',
                style: TextStyle(
                  color: k863ED5,
                  fontWeight: FontWeight.bold,
                  fontSize: constraints.maxWidth * .036,
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

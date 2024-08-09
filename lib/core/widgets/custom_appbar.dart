import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constans.dart';
import '../../feature/layout_view.dart/presentation/views/manager/app_cubit.dart';
import '../utils/responsive.dart';

AppBar appBar({
  required BuildContext context,
  required String title,
  bool isHome = false,
}) {
  var size = MediaQuery.of(context).size;
  var cubit = AppCubit.get(context);
  return AppBar(
    toolbarHeight:
        Responsive.isMobile(context) ? size.height * .05 : size.height * .1,
    bottom: isHome
        ? TabBar(
            tabs: const [
              Tab(text: 'السور'),
              Tab(text: 'الأجزاء'),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.width * .04,
              color: cubit.isdark ? Colors.white : k672CBC,
            ),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.width * .03,
              color: k8789A3,
            ),
            indicatorColor: cubit.isdark ? Colors.white : k672CBC,
          )
        : null,
    title: Text(
      title,
      style: Theme.of(context).appBarTheme.titleTextStyle,
    ),
    centerTitle: true,
    leadingWidth: size.width * .11,
    automaticallyImplyLeading: false,
    leading: !isHome
        ? Padding(
            padding: EdgeInsetsDirectional.only(
              start: size.width * .04,
            ),
            child: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_sharp,
                size: size.width * 0.06,
                color: cubit.isdark ? kA19CC5 : k8789A3,
              ),
            ),
          )
        : null,
    actions: [
      Padding(
        padding: EdgeInsetsDirectional.only(
          end: size.width * .04,
          start: size.width * .01,
        ),
        child: IconButton(
          onPressed: () {
            cubit.changeAppMode();
          },
          style: ButtonStyle(
            padding: WidgetStateProperty.all(EdgeInsets.zero),
          ),
          icon: cubit.isdark
              ? Icon(
                  Icons.light_mode,
                  size: size.width * 0.06,
                  color: kA19CC5,
                )
              : Icon(
                  Icons.dark_mode,
                  size: size.width * 0.06,
                  color: k8789A3,
                ),
        ),
      ),
    ],
  );
}

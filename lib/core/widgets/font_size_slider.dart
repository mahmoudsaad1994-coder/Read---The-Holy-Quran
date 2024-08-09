import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constans.dart';
import '../../feature/layout_view.dart/presentation/views/manager/app_cubit.dart';
import '../../feature/layout_view.dart/presentation/views/manager/app_states.dart';
import '../utils/styles.dart';

class FontSizeSlider extends StatelessWidget {
  const FontSizeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * .02,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' صغير',
                    style: Styles.medText(cubit, size.width),
                  ),
                  Text(
                    ' حجم الخط',
                    style: Styles.medText(cubit, size.width),
                  ),
                  Text(
                    ' كبير',
                    style: Styles.medText(cubit, size.width),
                  ),
                ],
              ),
              Slider(
                value: cubit.fontSize,
                onChanged: cubit.changeFontSize,
                min: 20,
                max: 60,
                divisions: 60,
              )
            ],
          ),
        );
      },
    );
  }
}

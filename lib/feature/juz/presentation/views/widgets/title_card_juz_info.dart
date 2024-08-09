import 'package:flutter/material.dart';

import '../../../../../constans.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../data.dart';

class TitleCardJuzInfo extends StatelessWidget {
  const TitleCardJuzInfo({super.key, required this.juzNumber});
  final int juzNumber;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              kDF98FA,
              k9055FF,
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Opacity(
                opacity: .3,
                child: Image.asset(
                  AssetsData.bookQuranImg,
                  height: size.width * .3,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * .01),
                  child: Text(
                    "الجزء ${numbArb[juzNumber - 1]}",
                    style: TextStyle(
                      fontSize: size.height * .03,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(
                  endIndent: size.width * .2,
                  indent: size.width * .2,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * .01),
                  child: Text(
                    'أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ',
                    style: TextStyle(
                      fontSize: size.width * .051,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

import '../../../../../constans.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/functions/revelation_type.dart';
import '../../../../../core/utils/surah_name_z.dart';

class TitleCardSurahInfo extends StatelessWidget {
  const TitleCardSurahInfo({super.key, required this.surahNumber});
  final int surahNumber;
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
                    surahNameZ[surahNumber],
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      getRevelationType(
                          quran.getPlaceOfRevelation(surahNumber)),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.height * .02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: size.height * .02,
                    ),
                    Text(
                      'عدد الآيات : ${quran.getVerseCount(surahNumber)}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.height * .02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                if (surahNumber != 1 && surahNumber != 9)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * .01),
                    child: Text(
                      quran.basmala,
                      style: TextStyle(
                        fontSize: size.height * .03,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                if (surahNumber == 1 || surahNumber == 9)
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

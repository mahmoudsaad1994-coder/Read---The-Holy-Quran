class AyahModel {
  int number;
  String text;
  int numberInSurah;
  int juz;
  int manzil;
  int page;
  int ruku;
  int hizbQuarter;
  Object sajda;

  AyahModel({
    required this.number,
    required this.text,
    required this.numberInSurah,
    required this.juz,
    required this.manzil,
    required this.page,
    required this.ruku,
    required this.hizbQuarter,
    required this.sajda,
  });

  factory AyahModel.fromJson(Map<String, dynamic> json) => AyahModel(
        number: json['number'] as int,
        text: json['text'] as String,
        numberInSurah: json['numberInSurah'] as int,
        juz: json['juz'] as int,
        manzil: json['manzil'] as int,
        page: json['page'] as int,
        ruku: json['ruku'] as int,
        hizbQuarter: json['hizbQuarter'] as int,
        sajda: json['sajda'] as Object,
      );

  Map<String, dynamic> toJson() => {
        'number': number,
        'text': text,
        'numberInSurah': numberInSurah,
        'juz': juz,
        'manzil': manzil,
        'page': page,
        'ruku': ruku,
        'hizbQuarter': hizbQuarter,
        'sajda': sajda,
      };
}

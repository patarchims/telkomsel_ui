part of 'shared.dart';

Text textBoldBlack(String name) {
  return Text(name,
      style: blackTextFont.copyWith(fontSize: 16, fontWeight: FontWeight.bold));
}

Text redTextFontRight(String name) {
  return Text(
    name,
    style: whiteTextFont.copyWith(
        color: redColor, fontWeight: FontWeight.bold, fontSize: 14),
  );
}

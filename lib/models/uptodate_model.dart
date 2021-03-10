part of 'models.dart';

class UptodateTelkomsel extends Equatable {
  final Color beginColor;
  final Color endColor;
  final String image;
  final String title;
  final String description;

  UptodateTelkomsel(
      {this.beginColor,
      this.endColor,
      this.image,
      this.title,
      this.description});

  @override
  List<Object> get props => [beginColor, endColor, image, title, description];
}

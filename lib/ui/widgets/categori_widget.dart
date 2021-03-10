part of 'widget.dart';

class CategoriWidget extends StatelessWidget {
  final String image;
  final String name;

  const CategoriWidget({
    Key key,
    @required this.image,
    @required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..borderRadius(all: 20)
        ..border(all: 2, color: Color(0xFF333D5E))
        ..height(120)
        ..width(100)
        ..background.color(Color(0xFF162044)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(bottom: 16),
            child: Image(
              image: AssetImage(image),
            ),
          ),
          Text(name, style: whiteTextFont),
        ],
      ),
    );
  }
}

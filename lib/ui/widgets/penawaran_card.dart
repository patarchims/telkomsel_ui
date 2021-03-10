part of 'widget.dart';

class PenawaranCard extends StatelessWidget {
  final String image;
  final String description;

  PenawaranCard(this.image, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Parent(
              style: ParentStyle()
                ..borderRadius(all: 10)
                ..height(115)
                ..width(250)
                ..background.image(path: image, fit: BoxFit.cover)),
          SizedBox(
            height: 12,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              description,
              style: blackTextFont.copyWith(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

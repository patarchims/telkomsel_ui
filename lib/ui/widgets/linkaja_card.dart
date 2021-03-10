part of 'widget.dart';

class LinkAjaCard extends StatelessWidget {
  final String image;
  final String title;

  LinkAjaCard(this.image, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 145,
      child: Column(
        children: [
          Parent(
            style: ParentStyle()
              ..background.image(path: image)
              ..borderRadius(all: 10)
              ..height(100)
              ..width(double.infinity),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              title,
              style: blackTextFont.copyWith(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

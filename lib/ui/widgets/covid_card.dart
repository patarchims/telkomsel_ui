part of 'widget.dart';

class CovidCard extends StatelessWidget {
  final String image;
  final String name;

  CovidCard(this.image, this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Parent(
            style: ParentStyle()
              ..height(130)
              ..borderRadius(all: 5)
              ..background.image(path: image, fit: BoxFit.cover),
          ),
          SizedBox(
            height: 12,
          ),
          Text(name,
              style: blackTextFont.copyWith(
                  fontSize: 14, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}

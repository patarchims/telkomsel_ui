part of 'widget.dart';

class FeatureStreamersWidget extends StatelessWidget {
  final String image;
  final String photImage;
  final String name;
  final String subName;

  const FeatureStreamersWidget({
    Key key,
    this.image,
    this.photImage,
    this.name,
    this.subName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          width: 260,
          margin: EdgeInsets.only(bottom: 12),
          child: Stack(
            children: [
              Parent(
                style: ParentStyle()
                  ..height(180)
                  ..background.image(path: "assets/images/spider.png")
                  ..width(260),
                child: Center(
                  child: Parent(
                      style: (ParentStyle()
                        ..width(50)
                        ..height(50)),
                      child: Image(
                        image: AssetImage("assets/icons/btn_play.png"),
                      )),
                ),
              ),
              SizedBox(
                height: 500,
              )
            ],
          ),
        ),

        // Tampilkan User
        Row(
          children: [
            Container(
              height: 50,
              margin: EdgeInsets.only(right: 12),
              width: 50,
              child: ClipPath(
                child: Image(
                  image: AssetImage("assets/icons/avatar2.png"),
                ),
              ),
            ),

            // Name Here
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Masayashi", style: whiteTextFont.copyWith(fontSize: 16)),
                Text("Spiderman",
                    style:
                        whiteTextFont.copyWith(fontSize: 12, color: textColor))
              ],
            )
          ],
        )
      ],
    );
  }
}

part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
                defaultMargin, 2 * defaultMargin, defaultMargin, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Learn From \nThe Real Master",
                      style: whiteTextFont.copyWith(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        height: 68,
                        width: 68,
                        margin: EdgeInsets.only(bottom: 30),
                        child: Stack(
                          children: [
                            ClipOval(
                              child: Container(
                                height: 60,
                                width: 60,
                                child: Image(
                                  image:
                                      AssetImage("assets/images/avatar1.png"),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 10,
                              child: ClipOval(
                                child: Container(
                                  height: 8,
                                  width: 8,
                                  color: pinkColor,
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),

                // Categori
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Text("Categori",
                      style: whiteTextFont.copyWith(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoriWidget(
                      image: "assets/icons/sword.png",
                      name: "Sword Art",
                    ),
                    CategoriWidget(
                      image: "assets/icons/target.png",
                      name: "Shooter",
                    ),
                    CategoriWidget(
                      image: "assets/icons/card.png",
                      name: "Strategy",
                    ),
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                // Categori
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Text("Feature Streamers",
                      style: whiteTextFont.copyWith(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: defaultMargin),
            height: 300,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FeatureStreamersWidget(),
                SizedBox(
                  width: 24,
                ),
                FeatureStreamersWidget()
              ],
            ),
          ),
          SizedBox(
            height: 300,
          )
        ],
      ),
    );
  }
}

part of 'pages.dart';

class VerificationPage extends StatefulWidget {
  @override
  VerificationPageState createState() => VerificationPageState();
}

class VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Parent(
              style: ParentStyle()
                ..margin(
                    top: 2 * defaultMargin,
                    left: defaultMargin,
                    right: defaultMargin),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Parent(
                      style: ParentStyle()
                        ..width(133)
                        ..height(148)
                        ..background.image(
                          path: "assets/images/verifikasi.png",
                        )),
                  SizedBox(
                    height: 26,
                  ),
                  Text(
                    "Masukkan kode unik yang kami kirim",
                    style: blackTextFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Silahkan periksa SMS kamu dan masukkan kode unik yang kami kirimkan ke 081290112333",
                    textAlign: TextAlign.left,
                    style: blackTextFont.copyWith(
                        fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Kode Unik",
                    style: blackTextFont.copyWith(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFA4B0BE))),
                        hintText: "Cth. 0q5TsgHxxxx",
                        hintStyle:
                            blackTextFont.copyWith(color: Color(0xFFA4B0BE))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                children: [
                  Container(
                    height: 42,
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text(
                        "LANJUT",
                        style: whiteTextFont.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      color: redColor,
                      onPressed: () {
                        Get.toNamed('mainPage');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: redColor)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Text redText(String text) {
    return Text(
      text,
      style: blackTextFont.copyWith(
          color: redColor, fontSize: 14, fontWeight: FontWeight.bold),
    );
  }
}

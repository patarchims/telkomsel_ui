part of 'pages.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.8);

    // List Item TELKOMSEL TERBARU
    List<Widget> terbaruTelkomsel = [
      UpToDateCard(Color(0xFFFF512F), Color(0xFFDD2476),
          "assets/images/omg.png", "Internet OMG!", "Bisa YouTube dan Sosmed"),
      UpToDateCard(Color(0xFF4776E6), Color(0xFF8E54E9),
          "assets/images/hadiah.png", "Undian Ketengan", "Beli kuota Ketengan"),
    ];

    // list item Tanggap COvid 19
    List<Widget> tanggapCovid = [
      CovidCard("assets/images/diskon1.png",
          "Diskon Spesial 25% Untuk \nPelanggan Baru"),
      CovidCard(
          "assets/images/diskon2.png", "Bebas Kuota Akases Layanan Kesehatan"),
    ];

    // List item Cari Voucer
    List<Widget> linkAja = [
      LinkAjaCard("assets/images/linkaja1.png", "Bayar Serba Cepat"),
      LinkAjaCard("assets/images/linkaja2.png", "Cukup Snap QR"),
      LinkAjaCard("assets/images/linkaja3.png", "NO! Credit Card"),
    ];

    // List Cari Voucer
    List<Widget> cariVoucer = [
      CariVoucerCard(
          "assets/images/voucer1.png", "Double Benefits from DOUBLE UNTUNG"),
      CariVoucerCard("assets/images/voucer2.png", "Join Undi-Undi Hepi 2020!")
    ];

    // List Penawaran Khusu
    List<Widget> penawaranList = [
      CariVoucerCard("assets/images/penawaran1.png",
          "Terus Belajar dari Rumahmu dengan Ruangguru"),
      CariVoucerCard("assets/images/penawaran2.png",
          "Belajar Kini Makin Mudah dengan Paket ilmupedia")
    ];

    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: BodyClipper(),
                child: Container(
                  color: redColor,
                  height: 150,
                  width: double.infinity,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    defaultMargin, defaultMargin, defaultMargin, 0),
                child: ClipPath(
                  clipper: CardClipper(),
                  child: Parent(
                    style: ParentStyle()
                      ..borderRadius(all: 10)
                      ..linearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFFE52D27),
                            Color(0xFFB31217),
                          ])
                      ..width(double.infinity)
                      ..height(220),

                    // ===================== contern of card
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(defaultMargin),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "081366204109",
                                    style: whiteTextFont.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  SizedBox(
                                    height: 15,
                                    width: 85,
                                    child: Image.asset(
                                        "assets/images/SimPATI_Logo.png"),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text("Sisa Pulsa Anda",
                                  style: whiteTextFont.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Rp 34.000",
                                      style: whiteTextFont.copyWith(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold)),
                                  Parent(
                                      style: ParentStyle()
                                        ..height(34)
                                        ..width(84)
                                        ..borderRadius(all: 5)
                                        ..background.color(yellowColor),
                                      child: Center(
                                        child: Text(
                                          "Isi Pulsa",
                                          style: blackTextFont.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Color(0xFF1E272E),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: defaultMargin),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Berlaku sampai ",
                                    style: whiteTextFont,
                                  ),
                                  Text("22 Desember 2020 ",
                                      style: whiteTextFont.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Telkomsel POIN ",
                                    style: whiteTextFont,
                                  ),
                                  Parent(
                                      style: ParentStyle()
                                        ..padding(all: 2)
                                        ..borderRadius(all: 5)
                                        ..background.color(yellowColor),
                                      child: Center(
                                        child: Text("172",
                                            style: blackTextFont.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                      )),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: defaultMargin,
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildPaket("Internet", "12.9", "GB"),
                    buildPaket("Telpon", "0", "Min"),
                    buildPaket("SMS", "23", "SMS"),
                  ],
                ),
                SizedBox(height: 53),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Text("Kategori Paket",
                      style: blackTextFont.copyWith(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildKategoriPaket("assets/icons/internet.png", "Internet"),
                    buildKategoriPaket("assets/icons/telp.png", "Telpon"),
                    buildKategoriPaket("assets/icons/sms.png", "SMS"),
                    buildKategoriPaket("assets/icons/roaming.png", "Roaming")
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildKategoriPaket("assets/icons/hiburan.png", "Hiburan"),
                    buildKategoriPaket("assets/icons/unggulan.png", "Unggulan"),
                    buildKategoriPaket(
                        "assets/icons/tersimpan.png", "Tersimpan"),
                    buildKategoriPaket("assets/icons/riwayat.png", "Riwayat")
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                // Terbaru di TElkomsel ===========================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textBoldBlack("Terbaru dari Telkomsel"),
                    redTextFontRight("Lihat Semua")
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),

          Container(
            height: 120,
            width: double.infinity,
            child: PageView.builder(
                controller: controller,
                itemCount: terbaruTelkomsel.length,
                itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(
                        left: (index == 0) ? 0 : 0,
                        right: (index == terbaruTelkomsel.length - 1)
                            ? defaultMargin
                            : 16),
                    child: terbaruTelkomsel[index])),
          ),

          // ======================== AYO PAKE LINK AJA
          SizedBox(
            height: 32,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 29),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textBoldBlack("Ayo! Pake Link Aja"),
                redTextFontRight("Lihat Semua")
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // ==================== generate tanggap covid 19
          Container(
            height: 200,
            width: double.infinity,
            child: PageView.builder(
                controller: controller,
                itemCount: tanggapCovid.length,
                itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(
                        left: (index == 0) ? 0 : 0,
                        right: (index == tanggapCovid.length - 1)
                            ? defaultMargin
                            : 16),
                    child: tanggapCovid[index])),
          ),

          SizedBox(
            height: 32,
          ),
          // ================================== AYO PAKAI LINK AJA
          Container(
            margin: EdgeInsets.symmetric(horizontal: 29),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textBoldBlack("Ayo Pakai Link Aja!"),
                SizedBox(height: 8),
                Text(
                  "Pakai LinkAja untuk beli pulsa, beli paket data dan bayar tagihan lebih mudah.",
                  style: blackTextFont,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // ==================== generate tanggap covid 19
          Container(
            height: 150,
            // margin: EdgeInsets.only(left: 29),
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                controller: controller,
                itemCount: linkAja.length,
                itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(
                        left: (index == 0) ? 29 : 0,
                        right:
                            (index == linkAja.length - 1) ? defaultMargin : 16),
                    child: linkAja[index])),
          ),

          SizedBox(
            height: 12,
          ),

          // ================================== CARI VOUCER YUKKK
          Container(
            margin: EdgeInsets.symmetric(horizontal: 29),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textBoldBlack("Cari Voucer, Yuk"),
                redTextFontRight("Lihat Semua")
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            height: 180,
            // margin: EdgeInsets.only(left: 29),
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                controller: controller,
                itemCount: cariVoucer.length,
                itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(
                        left: (index == 0) ? 29 : 0,
                        right: (index == cariVoucer.length - 1)
                            ? defaultMargin
                            : 16),
                    child: cariVoucer[index])),
          ),

          // ===================== PENAWARAN KHUSUS
          // ================================== CARI VOUCER YUKKK
          Container(
            margin: EdgeInsets.symmetric(horizontal: 29),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textBoldBlack("Penawaran Khusus"),
                redTextFontRight("Lihat Semua")
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            height: 180,
            // margin: EdgeInsets.only(left: 29),
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                controller: controller,
                itemCount: penawaranList.length,
                itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(
                        left: (index == 0) ? 29 : 0,
                        right: (index == penawaranList.length - 1)
                            ? defaultMargin
                            : 16),
                    child: penawaranList[index])),
          ),

          // MARGIN BOTTOM
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }

  Container buildKategoriPaket(String icon, String name) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 32,
            height: 32,
            child: Image.asset(icon),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            name,
            style: blackTextFont,
          )
        ],
      ),
    );
  }

  Container buildPaket(String name, String number, String subText) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: blackTextFont),
          SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(number,
                  style: whiteTextFont.copyWith(
                      color: redColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 4,
              ),
              Text(subText,
                  style: whiteTextFont.copyWith(
                    color: greyDark,
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class BodyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.91);
    path_0.quadraticBezierTo(
        size.width * 0.21, size.height * 0.98, size.width * 0.50, size.height);
    path_0.quadraticBezierTo(
        size.width * 0.76, size.height * 0.98, size.width, size.height * 0.91);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height * 0.91);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class CardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.01, size.height * 0.80);
    path_0.lineTo(size.width * 0.90, size.height * 1.02);
    path_0.lineTo(0, size.height * 1.02);
    path_0.lineTo(0, 0);
    path_0.lineTo(size.width * 1.01, 0);
    path_0.lineTo(size.width * 1.01, size.height * 0.80);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

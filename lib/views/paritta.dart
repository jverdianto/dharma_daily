part of 'pages.dart';

class Paritta extends StatefulWidget {
  final int selectedIndex;
  
  const Paritta({required this.selectedIndex, Key? key }) : super(key: key);

  @override
  _ParittaState createState() => _ParittaState();
}

class _ParittaState extends State<Paritta> {

  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: widget.selectedIndex);
  }

  // final controller = PageController(initialPage: 0);

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Dharma Daily"),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
    body: PageView(
      controller: controller,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,40),
          child: Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: (){}, 
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                          size: 35,
                          color: Colors.grey.shade400,
                        )
                      ),
                      Expanded(
                        child: Center(
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: new TextSpan(
                              style: new TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                height: 2
                              ),
                              children: <TextSpan>[
                                new TextSpan(
                                  text: "1. PEMBUKAAN\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24
                                  )
                                ),
                                new TextSpan(
                                  text: "Pemimpin Puja Bakti:\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                  )
                                ),
                                new TextSpan(
                                  text: """Memberi tanda Puja Bakti dimulai (dengan gong, lonceng, dan sebagainya). Pemimpin Puja Bakti menyalakan lilin dan dupa (hio), kemudian meletakkan dupa di tempatnya, sementara hadirin duduk bertumpu lutut dan bersikap añjali. Setelah dupa diletakkan di tempatnya, Pemimpin Puja Bakti dan para hadirin menghormat dengan menundukkan kepala (bersikap añjali dengan menyentuh dahi).""",
                                  style: TextStyle(
                                    height: 1.7
                                  )
                                )
                              ]
                            )
                          )
                        ),
                      ),
                      IconButton(
                        onPressed: () => controller.nextPage(
                          duration: const Duration(milliseconds: 300), 
                          curve: Curves.easeInOut
                        ), 
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: 35,
                        )
                      )
                    ],
                  ),
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,40),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => controller.previousPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                    )
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              height: 1.5
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                text: "2. NAMAKĀRA GĀTHĀ\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  height: 2
                                )
                              ),
                              new TextSpan(
                                text: "(Pemimpin puja bakti membaca Namakāra Gāthā. Hadirin mengikuti.)\n\n"
                              ),
                              new TextSpan(
                                text: "Arahaṁ Sammā-Sambuddho Bhagavā, Buddhaṁ Bhagavantaṁ abhivādemi. (namaskāra*)\n\n"
                              ),
                              new TextSpan(
                                text: "Svākkhāto Bhagavatā Dhammo, Dhammaṁ namassāmi. (namaskāra*)\n\n"
                              ),
                              new TextSpan(
                                text: "Supaṭipanno Bhagavato sāvaka-saṅgho, Saṅghaṁ namāmi. (namaskāra*)\n\n"
                              ),
                              new TextSpan(
                                text: "Sang Bhagavā, Yang Maha Suci, Yang Telah Mencapai Penerangan Sempurna; aku bersujud di hadapan Sang Buddha, Sang Bhagavā.\n\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              )
                            ]
                          )
                        )
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                    )
                  )
                ],
              ),
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,40),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => controller.previousPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                    )
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              height: 1.5
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                text: "3. TISARAṆA\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  height: 2
                                )
                              ),
                              new TextSpan(
                                text: "Pemimpin Puja Bakti:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                )
                              ),
                              new TextSpan(
                                text: "Handa mayaṁ Ti-saraṇa-gamana-pāṭhaṁ bhaṇāma se.\n",
                                style: TextStyle(
                                  fontSize: 18
                                )
                              ),
                              new TextSpan(
                                text: "Marilah kita mengucapkan Tiga Perlindungan.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 18
                                )
                              ),
                              new TextSpan(
                                text: "Bersama-sama:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "1) Buddhaṁ saraṇaṁ gacchāmi.\n    Dhammaṁ saraṇaṁ gacchāmi.\n    Saṅghaṁ saraṇaṁ gacchāmi.\n",
                              ),
                              new TextSpan(
                                text: "2) Dutiyampi Buddhaṁ saraṇaṁ\n    gacchāmi.\n    Dutiyampi Dhammaṁ saraṇaṁ\n    gacchāmi.\n    Dutiyampi Saṅghaṁ saraṇaṁ\n    gacchāmi.\n",
                              ),
                              new TextSpan(
                                text: "3) Tatiyampi Buddhaṁ saraṇaṁ\n    gacchāmi.\n    Tatiyampi Dhammaṁ saraṇaṁ\n    gacchāmi.\n    Tatiyampi Saṅghaṁ saraṇaṁ\n    gacchāmi.\n\n",
                              ),
                              new TextSpan(
                                text: "1) Aku berlindung kepada Buddha.\n    Aku berlindung kepada Dhamma.\n    Aku berlindung kepada Saṅgha.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 17.7
                                )
                              ),
                              new TextSpan(
                                text: "2) Untuk kedua kalinya, aku\n    berlindung kepada Buddha.\n    Untuk kedua kalinya, aku\n    berlindung kepada Dhamma.\n    Untuk kedua kalinya, aku\n    berlindung kepada Saṅgha.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "3) Untuk ketiga kalinya, aku\n    berlindung kepada Buddha.\n    Untuk ketiga kalinya, aku\n    berlindung kepada Dhamma.\n    Untuk ketiga kalinya, aku\n    berlindung kepada Saṅgha.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                            ]
                          )
                        )
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                    )
                  )
                ],
              ),
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,40),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => controller.previousPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                    )
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              height: 1.5
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                text: "4. PAÑCASĪLA\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  height: 2
                                )
                              ),
                              new TextSpan(
                                text: "Pemimpin Puja Bakti:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "Handa mayaṁ Pañca-sikkhā-pada-pāṭhaṁ bhaṇāma se.\n"
                              ),
                              new TextSpan(
                                text: "Marilah kita mengucapkan Lima Latihan Sīla\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Bersama-sama:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "1) Pāṇātipātā veramaṇī sikkhā-padaṁ samādiyāmi.\n"
                              ),
                              new TextSpan(
                                text: "2) Adinnādānā veramaṇī sikkhā-padaṁ samādiyāmi.\n"
                              ),
                              new TextSpan(
                                text: "3) Kāmesu micchācārā veramaṇī sikkhā-padaṁ samādiyāmi.\n"
                              ),
                              new TextSpan(
                                text: "4) Musāvādā veramaṇī sikkhā-padaṁ samādiyāmi.\n"
                              ),
                              new TextSpan(
                                text: "5) Surā-meraya-majja-pamādaṭṭhānā veramaṇī sikkhā-padaṁ samādiyāmi.\n\n"
                              ),
                              new TextSpan(
                                text: "1) Aku bertekad akan melatih diri menghindari pembunuhan makhluk hidup.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "2) Aku bertekad akan melatih diri menghindari pengambilan barang yang tidak diberikan.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "3) Aku bertekad akan melatih diri menghindari perbuatan asusila.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "4) Aku bertekad akan melatih diri menghindari ucapan yang tidak benar.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "5) Aku bertekad akan melatih diri menghindari segala minuman keras yang dapat menyebabkan lemahnya kesadaran.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                            ]
                          )
                        )
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                    )
                  )
                ],
              ),
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,40),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => controller.previousPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                    )
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              height: 1.5
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                text: "5. BUDDHĀNUSSATI\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  height: 2
                                )
                              ),
                              new TextSpan(
                                text: "Pemimpin Puja Bakti:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "Handa mayaṁ Buddhānussati-nayaṁ karoma se.\n"
                              ),
                              new TextSpan(
                                text: "Marilah kita mengucapkan Perenungan terhadap Buddha.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Bersama-sama:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "Iti pi so Bhagavā Arahaṁ Sammā-Sambuddho,\n"
                              ),
                              new TextSpan(
                                text: "Vijjā-caraṇa-sampanno Sugato Lokavidū,\n"
                              ),
                              new TextSpan(
                                text: "Anuttaro purisa-damma-sārathi satthā deva-manussānaṁ Buddho Bhagavā'ti.\n\n"
                              ),
                              new TextSpan(
                                text: "Demikianlah Sang Bhagavā, Yang Maha Suci, Yang Telah Mencapai Penerangan Sempurna;\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Sempurna pengetahuan serta tindak-tanduk-Nya, Sempurna menempuh Sang Jalan (ke Nibbāna), Pengenal segenap alam;\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Pembimbing manusia yang tiada taranya, Guru para dewa dan manusia, Yang Sadar (Bangun), Yang patut Dimuliakan.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                            ]
                          )
                        )
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                    )
                  )
                ],
              ),
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,40),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => controller.previousPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                    )
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              height: 1.5
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                text: "6. DHAMMĀNUSSATI\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  height: 2
                                )
                              ),
                              new TextSpan(
                                text: "Pemimpin Puja Bakti:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "Handa mayaṁ Dhammānussati-nayaṁ karoma se.\n"
                              ),
                              new TextSpan(
                                text: "Marilah kita mengucapkan Perenungan terhadap Dhamma.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Bersama-sama:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "Svākkhāto Bhagavatā Dhammo,\n"
                              ),
                              new TextSpan(
                                text: "Sandiṭṭhiko akāliko ehipassiko,\n"
                              ),
                              new TextSpan(
                                text: "Opanayiko paccattaṁ veditabbo viññūhī'ti.\n\n"
                              ),
                              new TextSpan(
                                text: "Dhamma Sang Bhagavā telah sempurna dibabarkan;\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Berada sangat dekat, tak lapuk oleh waktu, mengundang untuk dibuktikan;\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Menuntun ke dalam batin, dapat diselami oleh para bijaksana dalam batin masing-masing.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                            ]
                          )
                        )
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                    )
                  )
                ],
              ),
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,40),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => controller.previousPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                    )
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              height: 1.5
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                text: "7. SAṄGHĀNUSSATI\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  height: 2
                                )
                              ),
                              new TextSpan(
                                text: "Pemimpin Puja Bakti:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "Handa mayaṁ Saṅghānussati-nayaṁ karoma se.\n"
                              ),
                              new TextSpan(
                                text: "Marilah kita mengucapkan Perenungan terhadap Saṅgha.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Bersama-sama:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "Supaṭipanno Bhagavato sāvaka-saṅgho,\n"
                              ),
                              new TextSpan(
                                text: "Uju-paṭipanno Bhagavato sāvaka-saṅgho,\n"
                              ),
                              new TextSpan(
                                text: "Ñāya-paṭipanno Bhagavato sāvaka-saṅgho,\n"
                              ),
                              new TextSpan(
                                text: "Sāmīci-paṭipanno Bhagavato sāvaka-saṅgho,\n"
                              ),
                              new TextSpan(
                                text: "Yadidaṁ cattāri purisa-yugāni aṭṭha purisa-puggalā:\n"
                              ),
                              new TextSpan(
                                text: "Esa Bhagavato sāvaka-saṅgho,\n"
                              ),
                              new TextSpan(
                                text: "Āhuneyyo pāhuneyyo dakkhiṇeyyo añjali-karaṇīyo,\n"
                              ),
                              new TextSpan(
                                text: "Anuttaraṁ puññakkhettaṁ lokassā'ti.\n\n"
                              ),
                              new TextSpan(
                                text: "Saṅgha Siswa Sang Bhagavā telah bertindak baik;\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Saṅgha Siswa Sang Bhagavā telah bertindak lurus;\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Saṅgha Siswa Sang Bhagavā telah bertindak benar;\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Saṅgha Siswa Sang Bhagavā telah bertindak patut;\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Mereka, merupakan empat pasang makhluk, terdiri dari delapan jenis Makhluk Suci *): Itulah Saṅgha Siswa Sang Bhagavā;\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Patut menerima pemberian, tempat bernaung, persembahan serta penghormatan; Lapangan untuk menanam jasa, yang tiada taranya di alam semesta.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                            ]
                          )
                        )
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                    )
                  )
                ],
              ),
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,40),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => controller.previousPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                    )
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              height: 1.5
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                text: "8. SACCAKIRIYĀ GĀTHĀ\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  height: 2
                                )
                              ),
                              new TextSpan(
                                text: "Pemimpin Puja Bakti:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "Handa mayaṁ Sacca-kiriyā gāthāyo bhaṇāma se.\n"
                              ),
                              new TextSpan(
                                text: "Marilah kita mengucapkan Pernyataan Kebenaran.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Bersama-sama:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "1) Natthi me saraṇaṁ aññaṁ\n"
                              ),
                              new TextSpan(
                                text: "Buddho me saraṇaṁ varaṁ\n"
                              ),
                              new TextSpan(
                                text: "Etena sacca-vajjena\n"
                              ),
                              new TextSpan(
                                text: "Sotthi te hotu sabbadā.\n"
                              ),
                              new TextSpan(
                                text: "2) Natthi me saraṇaṁ aññaṁ\n"
                              ),
                              new TextSpan(
                                text: "Dhammo me saraṇaṁ varaṁ\n"
                              ),
                              new TextSpan(
                                text: "Etena sacca-vajjena\n"
                              ),
                              new TextSpan(
                                text: "Sotthi te hotu sabbadā.\n"
                              ),
                              new TextSpan(
                                text: "3) Natthi me saraṇaṁ aññaṁ\n"
                              ),
                              new TextSpan(
                                text: "Saṅgho me saraṇaṁ varaṁ\n"
                              ),
                              new TextSpan(
                                text: "Etena sacca-vajjena\n"
                              ),
                              new TextSpan(
                                text: "Sotthi te hotu sabbadā.\n\n"
                              ),
                              new TextSpan(
                                text: "1) Tiada perlindungan lain bagiku\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Sang Buddha-lah sesungguhnya Pelindungku\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Berkat kesungguhan pernyataan ini\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Semoga anda selamat sejahtera.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "2) Tiada perlindungan lain bagiku\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Sang Dhamma-lah sesungguhnya Pelindungku\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Berkat kesungguhan pernyataan ini\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Semoga anda selamat sejahtera.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "3) Tiada perlindungan lain bagiku\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Sang Sangha-lah sesungguhnya Pelindungku\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Berkat kesungguhan pernyataan ini\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Semoga anda selamat sejahtera.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                            ]
                          )
                        )
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                    )
                  )
                ],
              ),
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,40),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => controller.previousPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                    )
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              height: 1.5
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                text: "9. KARAṆĪYA METTĀ SUTTA\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21.2,
                                  height: 2
                                )
                              ),
                              new TextSpan(
                                text: "Pemimpin Puja Bakti:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "Handa mayaṁ Karaṇīya-mettā suttaṁ bhaṇāma se\n"
                              ),
                              new TextSpan(
                                text: "Marilah kita mengucapkan Sutta tentang Kasih Sayang yang harus dikembangkan.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Bersama-sama:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "1) Karaṇīyam-attha-kusalena\nyantaṁ santaṁ padaṁ abhisamecca,\nSakko ujū ca suhujū ca\nsuvaco cassa mudu anatimānī,\n"
                              ),
                              new TextSpan(
                                text: "2) Santussako ca subharo ca\nappakicco ca sallahuka-vutti,\nSantindriyo ca nipako ca\nappagabbho kulesu ananugiddho.\n"
                              ),
                              new TextSpan(
                                text: "3) Na ca khuddaṁ samācare kiñci\nyena viññū pare upavadeyyuṁ.\nSukhino vā khemino hontu\nsabbe sattā bhavantu sukhitattā.\n"
                              ),
                              new TextSpan(
                                text: "4) Ye keci pāṇa-bhūtatthi\ntasā vā thāvarā vā anavasesā,\nDīghā vā ye mahantā vā\nmajjhimā rassakā aṇuka-thūlā,\n"
                              ),
                              new TextSpan(
                                text: "5) Diṭṭhā vā ye va adiṭṭhā\nye ca dūre vasanti avidūre,\nBhūtā vā sambhavesī vā\nsabbe sattā bhavantu sukhitattā.\n"
                              ),
                              new TextSpan(
                                text: "6) Na paro paraṁ nikubbetha\nnātimaññetha katthaci naṁ kiñci,\nByārosanā paṭīgha-saññā\nnāññam-aññassa dukkham-iccheyya.\n"
                              ),
                              new TextSpan(
                                text: "7) Mātā yathā niyaṁ puttaṁ\nāyusā eka-puttam-anurakkhe,\nEvam-pi sabba-bhūtesu\nmāna-sambhāvaye aparimāṇaṁ.\n"
                              ),
                              new TextSpan(
                                text: "8) Mettañca sabba-lokasmiṁ\nmāna-sambhāvaye aparimāṇaṁ,\nUddhaṁ adho ca tiriyañca\nasambādhaṁ averaṁ asapattaṁ.\n"
                              ),
                              new TextSpan(
                                text: "9) Tiṭṭhañcaraṁ nisinno vā\nsayāno vā yāvatassa vigatam-iddho,\nEtaṁ satiṁ adhiṭṭheyya\nbrahmam-etaṁ vihāraṁ idham-āhu.\n"
                              ),
                              new TextSpan(
                                text: "10) Diṭṭhiñca anupagamma\nsīlavā dassanena sampanno,\nKāmesu vineyya gedhaṁ,\nNa hi jātu gabbha-seyyaṁ punaretī'ti.\n\n"
                              ),
                              new TextSpan(
                                text: "1) Inilah yang harus dikerjakan oleh mereka yang tangkas dalam kebaikan;\nUntuk mencapai ketenangan,\nIa harus mampu, jujur, sungguh jujur,\nRendah hati, lemah lembut, tiada sombong.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "2) Merasa puas, mudah disokong/dilayani,\nTiada sibuk, sederhana hidupnya,\nTenang inderanya, berhati-hati,\nTahu malu, tak melekat pada keluarga.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "3) Tak berbuat kesalahan walau pun kecil,\nYang dapat dicela oleh Para Bijaksana,\nHendaklah ia berpikir: Semoga semua makhluk berbahagia dan tenteram;\nSemoga semua makhluk berbahagia.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "4) Makhluk hidup apa pun juga,\nYang lemah dan kuat tanpa kecuali,\nYang panjang atau besar,\nYang sedang, pendek, kecil atau gemuk.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "5) Yang tampak atau tidak tampak,\nYang jauh atau pun dekat,\nYang telah lahir atau yang akan lahir,\nSemoga semua makhluk berbahagia.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "6) Jangan menipu orang lain,\nAtau menghina siapa saja,\nJangan karena marah dan benci,\nMengharap orang lain celaka.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "7) Bagaikan seorang ibu yang mempertaruhkan jiwanya,\nMelindungi anaknya yang tunggal,\nDemikianlah terhadap semua makhluk,\nDipancarkannya pikiran (kasih sayangnya) tanpa batas.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "8) Kasih sayangnya ke segenap alam semesta,\nDipancarkannya pikirannya itu tanpa batas,\nKe atas, ke bawah dan ke sekeliling,\nTanpa rintangan, tanpa benci dan permusuhan.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "9) Selagi berdiri, berjalan atau duduk,\nAtau berbaring, selagi tiada lelap,\nIa tekun mengembangkan kesadaran ini,\nYang dikatakan: Berdiam dalam Brahma.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "10) Tidak berpegang pada pandangan salah (tentang attā atau aku),\nDengan Sīla dan Penglihatan yang sempurna,\nHingga bersih dari nafsu indera,\nIa tak akan lahir dalam rahim mana pun juga.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                            ]
                          )
                        )
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                    )
                  )
                ],
              ),
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,40),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => controller.previousPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                    )
                  ),
                  Expanded(
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: new TextSpan(
                          style: new TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            height: 2
                          ),
                          children: <TextSpan>[
                            new TextSpan(
                              text: "10. DHAMMADESANĀ\n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                              )
                            ),
                            new TextSpan(
                              text: "(Khotbah Dhamma)\n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              )
                            ),
                            new TextSpan(
                              text: "Hadirin mendengarkan pembabaran Dhamma dengan sikap hormat* dan penuh perhatian.\n* Sikap hormat ini bisa berbentuk sikap duduk tenang berañjali dan sebagainya.",
                              style: TextStyle(
                                height: 1.7
                              )
                            )
                          ]
                        )
                      )
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                    )
                  )
                ],
              ),
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,40),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => controller.previousPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                    )
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              height: 1.5
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                text: "11. ETTĀVATĀ\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  height: 2
                                )
                              ),
                              new TextSpan(
                                text: "Pemimpin Puja Bakti:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "Handa mayaṁ Ettāvatā diṇṇaṁ bhaṇāma se.\n"
                              ),
                              new TextSpan(
                                text: "Marilah kita mengucapkan paritta Ettāvatā.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "Bersama-sama:\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              new TextSpan(
                                text: "1) Ettāvatā ca amhehi\nSambhataṁ puñña-sampadaṁ\nSabbe devā anumodantu\nSabba-sampatti-siddhiyā.\n"
                              ),
                              new TextSpan(
                                text: "2) Ettāvatā ca amhehi\nSambhataṁ puñña-sampadaṁ\nSabbe bhūtā anumodantu\nSabba-sampatti-siddhiyā.\n"
                              ),
                              new TextSpan(
                                text: "3) Ettāvatā ca amhehi\nSambhataṁ puñña-sampadaṁ\nSabbe sattā anumodantu\nSabba-sampatti-siddhiyā.\n"
                              ),
                              new TextSpan(
                                text: "4) Ākāsaṭṭhā ca bhummaṭṭhā\nDevā nāgā mahiddhikā\nPuññaṁ taṁ anumoditvā\nCiraṁ rakkhantu lokasanti\n"
                              ),
                              new TextSpan(
                                text: "5) Ākāsaṭṭhā ca bhummaṭṭhā\nDevā nāgā mahiddhikā\nPuññaṁ taṁ anumoditvā\nCiraṁ rakkhantu Indonesia\n"
                              ),
                              new TextSpan(
                                text: "6) Idaṁ vo ñātinaṁ hotu\nSukhitā hontu ñātayo\n(tiga kali)\n"
                              ),
                              new TextSpan(
                                text: "7) Devo vassatu kālena\nSassa sampatti hotu ca\nPhīto bhavatu loko ca\nRājā bhavatu dhammiko\n"
                              ),
                              new TextSpan(
                                text: "8) Ākāsaṭṭhā ca bhummaṭṭhā\nDevā nāgā mahiddhikā\nPuññaṁ taṁ anumoditvā\nCiraṁ rakkhantu Sāsanaṁ\n"
                              ),
                              new TextSpan(
                                text: "9) Ākāsaṭṭhā ca bhummaṭṭhā\nDevā nāgā mahiddhikā\nPuññaṁ taṁ anumoditvā\nCiraṁ rakkhantu Desanaṁ\n"
                              ),
                              new TextSpan(
                                text: "10) Ākāsaṭṭhā ca bhummaṭṭhā\nDevā nāgā mahiddhikā\nPuññaṁ taṁ anumoditvā\nCiraṁ rakkhantu maṁ paraṁ'ti\n\n"
                              ),
                              new TextSpan(
                                text: "1) Sebanyak kami telah\nMencapai dan mengumpulkan jasa;\nSemoga semua dewa turut bergembira,\nAgar mendapat keuntungan beraneka warna.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "2) Sebanyak kami telah\nMencapai dan mengumpulkan jasa;\nSemoga semua makhluk halus turut bergembira,\nAgar mendapat keuntungan beraneka warna.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "3) Sebanyak kami telah\nMencapai dan mengumpulkan jasa;\nSemoga semua makhluk hidup turut bergembira,\nAgar mendapat keuntungan beraneka warna.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "4) Semoga para makhluk di angkasa dan di bumi,\nPara dewa dan naga yang perkasa;\nSetelah menikmati jasa-jasa ini,\nSelalu melindungi perdamaian dunia.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "5) Semoga para makhluk di angkasa dan di bumi,\nPara dewa dan naga yang perkasa;\nSetelah menikmati jasa-jasa ini,\nSelalu melindungi Indonesia.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "6) Semoga jasa-jasa ini melimpah\nPada sanak keluarga yang telah meninggal;\nSemoga mereka berbahagia.\n(tiga kali)\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "7) Semoga hujan tepat pada musimnya\nSemoga dunia maju dengan pesat\nSerta selalu bahagia dan damai\nSemoga Pemerintah/Pemimpin berlaku lurus.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "8) Semoga para makhluk di angkasa dan di bumi,\nPara dewa dan naga yang perkasa;\nSetelah menikmati jasa-jasa ini,\nSelalu melindungi Ajaran.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "9) Semoga para makhluk di angkasa dan di bumi,\nPara dewa dan naga yang perkasa;\nSetelah menikmati jasa-jasa ini,\nSelalu melindungi pembabaran Dhamma.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                              new TextSpan(
                                text: "10) Semoga para makhluk di angkasa dan di bumi,\nPara dewa dan naga yang perkasa;\nSetelah menikmati jasa-jasa ini,\nSelalu melindungi kita semua.\n",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                )
                              ),
                            ]
                          )
                        )
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ), 
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                    )
                  )
                ],
              ),
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,40),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => controller.previousPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeInOut
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 35,
                    )
                  ),
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: new TextSpan(
                              style: new TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                height: 2
                              ),
                              children: <TextSpan>[
                                new TextSpan(
                                  text: "12. PENUTUP\n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24
                                  )
                                ),
                                new TextSpan(
                                  text: "Apabila kebaktian dihadiri bhikkhu, sebelum penutupan bhikku memberi pemberkahan. Setelah membaca paritta Ettāvatā, kebaktian ditutup dengan Namakāra Gāthā.",
                                  style: TextStyle(
                                    height: 1.7
                                  )
                                )
                              ]
                            )
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () => controller.animateToPage(
                              1, 
                              duration: const Duration(milliseconds: 100), 
                              curve: Curves.ease
                            ), 
                            child: Text("BALIK KE NAMAKĀRA GĀTHĀ")
                          )
                        ],
                      )
                    ),
                  ),
                  IconButton(
                    onPressed: () {}, 
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                      color: Colors.grey.shade400
                    )
                  )
                ],
              ),
            )
          ),
        ),
      ],
    ),
  );
  
}
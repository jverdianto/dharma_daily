part of 'pages.dart';

class Listparitta extends StatefulWidget {
  const Listparitta({ Key? key }) : super(key: key);

  @override
  _ListparittaState createState() => _ListparittaState();
}

class _ListparittaState extends State<Listparitta> {
  

  List<Text> isiParitta = [
    Text("Memberi tanda Puja Bakti dimulai (dengan gong, lonceng, dan sebagainya). Pemimpin Puja Bakti menyalakan lilin dan dupa (hio), kemudian meletakkan dupa di tempatnya, sementara hadirin duduk bertumpu lutut dan bersikap añjali. Setelah dupa diletakkan di tempatnya, Pemimpin Puja Bakti dan para hadirin menghormat dengan menundukkan kepala (bersikap añjali dengan menyentuh dahi)."),
    Text("Arahaṁ Sammā-Sambuddho Bhagavā, Buddhaṁ Bhagavantaṁ abhivādemi. (namaskāra*)\nSvākkhāto Bhagavatā Dhammo, Dhammaṁ namassāmi. (namaskāra*)\nSupaṭipanno Bhagavato sāvaka-saṅgho, Saṅghaṁ namāmi. (namaskāra*)\n"),
    Text("Buddhaṁ saraṇaṁ gacchāmi. Dhammaṁ saraṇaṁ gacchāmi. Saṅghaṁ saraṇaṁ gacchāmi. Dutiyampi Buddhaṁ saraṇaṁ gacchāmi. Dutiyampi Dhammaṁ saraṇaṁ gacchāmi. Dutiyampi Saṅghaṁ saraṇaṁ gacchāmi.\n"),
    Text("Pāṇātipātā veramaṇī sikkhā-padaṁ samādiyāmi. Adinnādānā veramaṇī sikkhā-padaṁ samādiyāmi. Kāmesu micchācārā veramaṇī sikkhā-padaṁ samādiyāmi. Musāvādā veramaṇī sikkhā-padaṁ samādiyāmi. Surā-meraya-majja-pamādaṭṭhānā veramaṇī sikkhā-padaṁ samādiyāmi."),
    Text("Iti pi so Bhagavā Arahaṁ Sammā-Sambuddho, Vijjā-caraṇa-sampanno Sugato Lokavidū, Anuttaro purisa-damma-sārathi satthā deva-manussānaṁ Buddho Bhagavā'ti."),
    Text("Svākkhāto Bhagavatā Dhammo, Sandiṭṭhiko akāliko ehipassiko, Opanayiko paccattaṁ veditabbo viññūhī'ti."),
    Text("Supaṭipanno Bhagavato sāvaka-saṅgho, Uju-paṭipanno Bhagavato sāvaka-saṅgho, Ñāya-paṭipanno Bhagavato sāvaka-saṅgho, Sāmīci-paṭipanno Bhagavato sāvaka-saṅgho, Yadidaṁ cattāri purisa-yugāni aṭṭha purisa-puggalā:"),
    Text("Natthi me saraṇaṁ aññaṁ, Buddho me saraṇaṁ varaṁ, Etena sacca-vajjena, Sotthi te hotu sabbadā. Natthi me saraṇaṁ aññaṁ, Dhammo me saraṇaṁ varaṁ, Etena sacca-vajjena, Sotthi te hotu sabbadā."),
    Text("Karaṇīyam-attha-kusalena yantaṁ santaṁ padaṁ abhisamecca, Sakko ujū ca suhujū ca suvaco cassa mudu anatimānī, Santussako ca subharo ca appakicco ca sallahuka-vutti, Santindriyo ca nipako ca\nappagabbho kulesu ananugiddho."),
    Text("Hadirin mendengarkan pembabaran Dhamma dengan sikap hormat dan penuh perhatian. Sikap hormat ini bisa berbentuk sikap duduk tenang berañjali dan sebagainya."),
    Text("Ettāvatā ca amhehi, Sambhataṁ puñña-sampadaṁ, Sabbe devā anumodantu, Sabba-sampatti-siddhiyā. Ettāvatā ca amhehi, Sambhataṁ puñña-sampadaṁ, Sabbe bhūtā anumodantu, Sabba-sampatti-siddhiyā."),
    Text("Apabila kebaktian dihadiri bhikkhu, sebelum penutupan bhikku memberi pemberkahan. Setelah membaca paritta Ettāvatā, kebaktian ditutup dengan Namakāra Gāthā.")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => Paritta(
                  selectedIndex: index,
                )
              )
            );
          },
          child: Card(
            elevation: 0.8,
            child: Container(
              height: 100,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8,0,8,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        judulParitta[index].data!,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          height: 1,
                        ),
                      ),
                      Text(
                        isiParitta[index].data!,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade600,
                          height: 1
                        ),
                      )
                    ],
                  ),
                ),
            ),
          ),
        );
      },
    );
  }
}
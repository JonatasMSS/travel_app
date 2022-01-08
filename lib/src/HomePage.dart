import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/src/DescPage.dart';
import 'const.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.all(5),
          alignment: Alignment.centerRight,
          height: 50,
          width: size.width,
          child: IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.chat_bubble_outline_outlined,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //color: Colors.red.shade200,
              width: size.width,
              height: 150,
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                " Qual será\n seu destino?",
                style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                softWrap: true,
              ),
            ),
            // ============= Container de Pesquisa =======================================
            Container(
              width: size.width,
              height: 60,
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              alignment: Alignment.center,
              //color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.map_rounded),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey[300],
                  hintText: "Pesquisar Locais",
                  prefixIconColor: Colors.grey[300],
                  iconColor: Colors.grey[300],
                ),
              ),
            ),
            // Lista de locais horizontal

            Builder(
              builder: (contextI) {
                final sizeI = MediaQuery.of(contextI).size;
                return Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: size.width,
                  height: size.height / 3,
                  child: ListView(
                    padding: const EdgeInsets.only(bottom: 15),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      PhotoCont(
                        localIm:
                            "https://www.vounajanela.com/wp-content/uploads/2018/05/o-que-fazer-em-budapeste-1-1050x599.jpg",
                        titulo: "Budapeste",
                        subTitulo: "Hungria",
                      ),
                      PhotoCont(
                        localIm:
                            "https://f7j8i5n9.stackpathcdn.com/wp-content/uploads/2015/04/seguro-viagem-europa-paris-1.jpg",
                        titulo: "Torre Eifell",
                        subTitulo: "Paris, França",
                      ),
                      PhotoCont(
                        localIm:
                            "https://f7j8i5n9.stackpathcdn.com/wp-content/uploads/2016/07/louvre-paris.jpg",
                        titulo: "Louvre Museu",
                        subTitulo: "Paris,França",
                      ),
                      PhotoCont(
                        localIm:
                            "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/31/f5/a0/photo0jpg.jpg?w=1200&h=-1&s=1",
                        titulo: "Praia de Tambau",
                        subTitulo: "João Pessoa, Paraiba",
                      ),
                    ],
                  ),
                );
              },
            ),
            //=================== Lista de locais Vertical ==================
            const Divider(
              height: 15,
              thickness: 0,
            ),
            Column(
              children: [
                Hotels(
                  lImage:
                      "https://cf.bstatic.com/xdata/images/hotel/max1024x768/125289590.jpg?k=1603566e3197db97df53d5abef0f315b4f775ab02dfd474825724409f1847c1f&o=&hp=1",
                  title: "Garden Hotel",
                  subTitle: "Campina Grande, Paraiba",
                  price: 200.00,
                ),
                Hotels(
                  lImage:
                      "https://cf.bstatic.com/xdata/images/hotel/max1280x900/310669277.jpg?k=539da06536f2b183ae24d97acb46c40549b38aa6f106ea9bfbf3d6b281ee3372&o=&hp=1",
                  title: "Bessa Beach Hotel",
                  subTitle: "João Pessoa, Paraiba",
                  price: 299.00,
                ),
                Hotels(
                  lImage:
                      "https://cf.bstatic.com/xdata/images/hotel/max1280x900/102732143.jpg?k=246a451bfcba64bb6239776ff2500cae2b0330181da63ea713ee44a447adbfe3&o=&hp=1",
                  title: "Mélia Ibirapuera",
                  subTitle: "São Paulo, Brasil",
                  price: 292.90,
                ),
                Hotels(
                  lImage:
                      "https://imgcy.trivago.com/c_lfill,d_dummy.jpeg,e_sharpen:60,f_auto,h_450,q_auto,w_450/itemimages/10/76/1076986_v5.jpeg",
                  title: "Bourbon Convention Ibirapuera",
                  subTitle: "São Paulo, Brasil",
                  price: 300,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Hotels extends StatelessWidget {
  Hotels({
    Key? key,
    this.price = 0.0,
    this.subTitle = "Subtitulo",
    this.title = "Titulo",
    this.lImage =
        "https://www.vounajanela.com/wp-content/uploads/2018/05/o-que-fazer-em-budapeste-1-1050x599.jpg",
  }) : super(key: key);

  String lImage;
  String title;
  String subTitle;
  double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DescPage(
                lImage: lImage,
                lTitle: title,
                lPrice: price,
                lSubTitle: subTitle,
                desc: loreImpsum,
              ),
            ),
          );
        },
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                  lImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      title,
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      subTitle,
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "$price" + "/por Dia",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PhotoCont extends StatelessWidget {
  PhotoCont({
    Key? key,
    this.titulo = "Titulo Image",
    this.subTitulo = "Subtitulo",
    this.localIm =
        "https://www.vounajanela.com/wp-content/uploads/2018/05/o-que-fazer-em-budapeste-1-1050x599.jpg",
  }) : super(
          key: key,
        );

  String localIm;
  String titulo;
  String subTitulo;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 15),
        width: 200,
        //color: Colors.yellow,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DescPage(
                  lImage: localIm,
                  lTitle: titulo,
                  lSubTitle: subTitulo,
                  lPrice: 280.90,
                  desc: loreImpsum,
                ),
              ),
            );
          },
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 200,
                  child: Image.network(
                    localIm,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  isThreeLine: true,
                  contentPadding: EdgeInsets.only(bottom: 10),
                  title: Text(
                    titulo,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    subTitulo,
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

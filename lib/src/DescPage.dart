import 'package:flutter/material.dart';
import 'package:travel_app/src/const.dart';
import 'package:google_fonts/google_fonts.dart';

class DescPage extends StatelessWidget {
  DescPage({
    Key? key,
    required this.lImage,
    required this.lTitle,
    required this.lPrice,
    required this.lSubTitle,
    this.desc = "Descrição do text",
  }) : super(key: key);
  String lImage;
  String lTitle;
  String lSubTitle;
  double lPrice;
  String desc;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: Colors.black,
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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              width: size.width,
              child: Image.network(
                lImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: size.width,
            height: 100,
            child: Column(
              children: [
                Expanded(
                  child: ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text(
                      lTitle,
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      lSubTitle,
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  width: size.width,
                  child: Text(
                    "RS" + " $lPrice /por Dia",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: size.width,
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Descrição",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 5),
                    width: size.width,
                    child: Text(
                      desc,
                      style: GoogleFonts.quicksand(),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

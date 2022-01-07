import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
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
          )
        ],
      ),
    );
  }
}

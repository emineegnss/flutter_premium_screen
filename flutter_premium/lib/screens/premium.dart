import 'package:flutter/material.dart';
import 'package:flutter_premium/const.dart';
import 'package:flutter_premium/widgets/info_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Premium extends StatefulWidget {
  Premium({Key? key}) : super(key: key);
  String current = "";
  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      appBar: AppBar(
        leading: Icon(
          Icons.chevron_left,
          color: Color(0xff787878),
        ),
        centerTitle: true,
        title: Text(
          "Premium",
          style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff787878), fontSize: 17),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 130, right: 130, top: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(300),
              child: SizedBox(
                  height: 130,
                  child: Container(
                    decoration: BoxDecoration(color: Color(0xff1E1E1E)),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/premium2.jpg"),
                      child: CircleAvatar(
                        maxRadius: 55,
                        backgroundColor: Color(0xff1E1E1E),
                        child: Text(
                          "🔓",
                          style: TextStyle(fontSize: 54, color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Unlock Premium Features",
            textAlign: TextAlign.center,
            style: GoogleFonts.quicksand(textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 36)),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis facilisis dapibus. Nunc sagittis mi id nunc fermentum dignissim",
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                  textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 17, color: Color(0xff787878))),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: Price.prices
                  .map((e) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Info(
                        isSelected: widget.current == e.title,
                        onTap: () {
                          setState(() {
                            widget.current = e.title;
                          });
                        },
                        price: e,
                      )))
                  .toList(),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Premium Features",
                style: GoogleFonts.quicksand(
                    textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 17, color: Color(0xffFFFFFF))),
              ),
              SizedBox(
                width: 107,
              ),
              Row(
                children: [
                  Text(
                    "Premium",
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: Color(0xff787878))),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Row(
                children: [
                  Text(
                    "Free",
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: Color(0xff787878))),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: Featuress.features
                .map((e) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Features(
                      features: e,
                    )))
                .toList(),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 28),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis facilisis dapibus. Nunc sagittis mi id nunc fermentum dignissim",
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                  textStyle: TextStyle(fontWeight: FontWeight.w400), fontSize: 16, color: Color(0xff787878)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40, left: 32, right: 32),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Unlock Premium",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontWeight: FontWeight.w500), fontSize: 17, color: Color(0xffFFFFFF)),
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 56),
                  primary: const Color(0xff8B02FF),
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28)))),
            ),
          )
        ],
      ),
    );
  }
}

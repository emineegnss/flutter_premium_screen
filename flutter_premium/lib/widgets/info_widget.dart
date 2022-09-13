import 'package:flutter/material.dart';
import 'package:flutter_premium/models/price_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Info extends StatelessWidget {
  Info({Key? key, required this.price, required this.onTap, required this.isSelected}) : super(key: key);
  final PriceModel price;
  final Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Color(0xff787878),
              ),
              borderRadius: BorderRadius.circular(16),
              color: isSelected ? Color(0xff8B02FF) : Color(0xff1C1C1C)),
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: Text(
                price.icon,
                style: TextStyle(fontSize: 34),
              ),
            ),
            title: Text(
              price.title,
              style: GoogleFonts.quicksand(
                  textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 17, color: Color(0xffFFFFFF))),
            ),
            subtitle: Text(price.subtitle,
                style: GoogleFonts.quicksand(
                    textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: Color(0xffFFFFFF)))),
            trailing: Column(
              children: [
                Text(price.price,
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 17, color: Color(0xffFFFFFF)))),
                Text(
                  price.message,
                  style: GoogleFonts.quicksand(
                      textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: Color(0xffFFFFFF))),
                )
              ],
            ),
          ),
        ));
  }
}

class Features extends StatelessWidget {
  const Features({Key? key, required this.features}) : super(key: key);
  final FeaturesModel features;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 20,
          child: Text(
            features.text,
            style: GoogleFonts.quicksand(
                textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: Color(0xff787878))),
          ),
        ),
        SizedBox(
          width: 96,
        ),
        Container(
          height: 20,
          child: Icon(
            features.pIcon,
            color: Color(0xff8B02FF),
            size: 20,
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Icon(
          features.isFree ? features.pIcon : features.fIcon,
          color: features.isFree ? Color(0xff8B02FF) : Color(0xff787878),
          size: 20,
        )
      ],
    );
  }
}

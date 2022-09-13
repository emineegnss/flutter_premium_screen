import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'models/price_model.dart';

class Price {
  static final prices = <PriceModel>[
    PriceModel(icon: "😎", title: "12 months", subtitle: "Best Value", price: "\$6.99", message: "Per Month"),
    PriceModel(icon: "🔥", title: "6 months", subtitle: "Best Match", price: "\$10.99", message: "Per Month"),
    PriceModel(icon: "☝🏻", title: "1 month", subtitle: "Normal", price: "\$14.99", message: "Per Month"),
  ];
}

class Featuress {
  static final features = <FeaturesModel>[
    FeaturesModel(
        text: "•	Lorem ipsum dolor sit amet.",
        pIcon: FeatherIcons.checkCircle,
        fIcon: FeatherIcons.xCircle,
        isFree: false),
    FeaturesModel(
        text: "•	Lorem ipsum dolor sit amet.",
        pIcon: FeatherIcons.checkCircle,
        fIcon: FeatherIcons.xCircle,
        isFree: true),
    FeaturesModel(
        text: "•	Lorem ipsum dolor sit amet.",
        pIcon: FeatherIcons.checkCircle,
        isFree: false,
        fIcon: FeatherIcons.xCircle),
    FeaturesModel(
        text: "•	Lorem ipsum dolor sit amet.",
        pIcon: FeatherIcons.checkCircle,
        fIcon: FeatherIcons.xCircle,
        isFree: false),
    FeaturesModel(
        text: "•	Lorem ipsum dolor sit amet.",
        pIcon: FeatherIcons.checkCircle,
        fIcon: FeatherIcons.xCircle,
        isFree: true),
    FeaturesModel(
        text: "•	Lorem ipsum dolor sit amet.",
        pIcon: FeatherIcons.checkCircle,
        fIcon: FeatherIcons.xCircle,
        isFree: false),
    FeaturesModel(
        text: "•	Lorem ipsum dolor sit amet.",
        pIcon: FeatherIcons.checkCircle,
        fIcon: FeatherIcons.xCircle,
        isFree: false),
    FeaturesModel(
        text: "•	Lorem ipsum dolor sit amet.",
        pIcon: FeatherIcons.checkCircle,
        fIcon: FeatherIcons.xCircle,
        isFree: false),
  ];
}

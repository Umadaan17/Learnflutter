import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog})
      : assert(catalog != null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mOnly(right: 15),
          children: [
            "\$${catalog.price}"
                .text
                .bold
                .xl4
                .color(context.accentColor)
                .make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Mytheme.darkBluish),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Add To Cart".text.make())
                .wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
          bottom: false,
          child: Column(children: [
            Hero(
                    tag: catalog.id.toString(),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(children: [
                    catalog.name.text.xl4.bold
                        .color(context.accentColor)
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                    "Clita tempor takimata eirmod no lorem erat no est, ut ea invidunt dolore rebum. Ut sadipscing sed clita lorem est stet invidunt. Et aliquyam elitr sit consetetur dolor gubergren no diam, voluptua rebum takimata ea no, at no et at sanctus elitr est amet dolor, lorem tempor consetetur lorem sea"
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p16()
                  ]).py32(),
                ),
              ),
            )
          ])),
    );
  }
}

import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class BigTitleCard extends StatefulWidget {
  const BigTitleCard({Key? key}) : super(key: key);

  @override
  _BigTitleCardState createState() => _BigTitleCardState();
}

class _BigTitleCardState extends State<BigTitleCard> {
  @override
  Widget build(BuildContext context) {

    return BootstrapCol(
      sizes: 'col-sm-12 col-ml-6 col-lg-6 col-xl-3',
      child: AspectRatio(
        aspectRatio: 10 / 4,
        child: Container(
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(
            vertical: Dims.h2Padding(context),
            horizontal: Dims.h2Padding(context),
          ),
          decoration: Styles.cardBoxDecoration(context),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: Dims.h1Padding(context),
                  color: Styles.primaryColor,
                ),
              ),
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.share_outlined,
                      color: Styles.t3Color,
                      size: Dims.h1FontSize(context),
                    ),
                    EsHSpacer(),
                    EsHSpacer(),
                    Icon(
                      Icons.favorite_border_rounded,
                      color: Styles.t3Color,
                      size: Dims.h1FontSize(context),
                    ),
                  ],
                ),
                bottom: Dims.h1Padding(context),
                left: Dims.h1Padding(context),
              ),
              Container(
                padding: EdgeInsets.all(Dims.h2Padding(context)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(Dims.h2BorderRadius(context))),
                            color: Styles.primaryColor),
                        child: AspectRatio(
                          aspectRatio: 0.8,
                          child: Image.asset(
                            'assets/images/img1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                        // height: 700,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(Dims.h2BorderRadius(context))),
                          // color: Colors.indigo
                        ),
                        child: Container(
                          padding: EdgeInsets.all(Dims.h2Padding(context)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              EsTitle(
                                "عنوان",
                                size: Dims.h2FontSize(context),
                                align: TextAlign.start,
                              ),
                              EsVSpacer(
                                big: true,
                                factor: 1,
                              ),
                              EsOrdinaryText(
                                // size: Dims.h3FontSize(context),
                                "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.",
                                overFlowTag: true,

                                align: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

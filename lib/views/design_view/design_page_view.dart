import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stacked/stacked.dart';

import '../../constants/constants_helper.dart';
import '../../widgets/custom_widget_helper.dart';
import 'cart_page_view_model.dart';

class DesignPageView extends StatelessWidget {
  const DesignPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DesignPageViewModel>.reactive(
        viewModelBuilder: () => DesignPageViewModel(),
        onViewModelReady: (model) => model.initialize(),
        builder: (context, model, child) => Scaffold(
            backgroundColor: AppColor.appColorWhite,
            body: Scaffold(
                backgroundColor: AppColor.appColorMain,
                body: Stack(
                  children: [
                   
                    SafeArea(
                        child: ListView(
                      children: [
                         Container(
                                            height: customHeight(context,
                                                percentage: 0.6),
                                            decoration: BoxDecoration(
                                                boxShadow: const [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 11, 8, 8),
                                                    offset: Offset(0.5, 0.5),
                                                    blurRadius: 40,
                                                  ),
                                                ],
                                                color: AppColor.appColorWhite,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(50),
                                                  topLeft: Radius.circular(50),
                                                  topRight: Radius.circular(20),
                                                )),
                                            child: Column(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: customHeight(
                                                              context,
                                                              percentage: 0.16),
                                                          height: customHeight(
                                                              context,
                                                              percentage: 0.16),
                                                          decoration:
                                                              BoxDecoration(
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                color: AppColor
                                                                    .appColorGreylight,
                                                                offset: Offset(
                                                                    10, 0),
                                                                blurRadius: 10,
                                                              ),
                                                            ],
                                                            color: AppColor
                                                                .appColorBlack,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            child: Image.asset(
                                                              "assets/item.png",
                                                              fit: BoxFit.cover,
                                                              height:
                                                                  customHeight(
                                                                      context,
                                                                      percentage:
                                                                          0.16),
                                                              width:
                                                                  customHeight(
                                                                      context,
                                                                      percentage:
                                                                          0.16),
                                                            ),
                                                          ),
                                                        ),
                                                        Gap(10),
                                                        SizedBox(
                                                          width: customWidth(
                                                              context,
                                                              percentage: 0.3),
                                                          height: customHeight(
                                                              context,
                                                              percentage: 0.1),
                                                          child: Column(
                                                            children: [
                                                              Gap(15),
                                                              LimitedBox(
                                                                  child:
                                                                      AutoSizeText(
                                                                "20 e-Coupon 30 Ltr gas",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: customWidth(
                                                              context,
                                                              percentage: 0.2),
                                                          height: customHeight(
                                                              context,
                                                              percentage: 0.1),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              LimitedBox(
                                                                  child:
                                                                      AutoSizeText(
                                                                "BHD",
                                                              )),
                                                              LimitedBox(
                                                                  child:
                                                                      AutoSizeText(
                                                                "4.9",
                                                                minFontSize: 36,
                                                                maxFontSize: 38,
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )),
                                                            ],
                                                          ),
                                                        ),
                                                      ]),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Gap(15),
                                                      LimitedBox(
                                                          child: AutoSizeText(
                                                        "Description:",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                      LimitedBox(
                                                          child: AutoSizeText(
                                                        "10 e-Coupon 20 Ltr gas",
                                                      )),
                                                    ],
                                                  ),
                                                ),
                                                Spacer(),
                                                Transform.scale(
                                                  scale: 0.6,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      IconButton(
                                                        style: ButtonStyle(
                                                          backgroundColor:
                                                              WidgetStateProperty
                                                                  .all(AppColor
                                                                      .appColorMainBlue),
                                                        ),
                                                        onPressed: () {
                                                          model.itemQtyCounter(
                                                              "-");
                                                        },
                                                        icon: Icon(
                                                          Icons.remove,
                                                          color: AppColor
                                                              .appColorWhite,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          width: customWidth(
                                                              context,
                                                              percentage: 0.18),
                                                          height: customHeight(
                                                              context,
                                                              percentage: 0.05),
                                                          child: Center(
                                                              child: LimitedBox(
                                                                  child:
                                                                      AutoSizeText(
                                                            model.itemQty
                                                                .toString(),
                                                            maxFontSize: 36,
                                                            minFontSize: 24,
                                                          )))),
                                                      IconButton(
                                                        style: ButtonStyle(
                                                          backgroundColor:
                                                              WidgetStateProperty
                                                                  .all(AppColor
                                                                      .appColorMainBlue),
                                                        ),
                                                        onPressed: () {
                                                          model.itemQtyCounter(
                                                              "+");
                                                        },
                                                        icon: Icon(
                                                          Icons.add,
                                                          color: AppColor
                                                              .appColorWhite,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  child: Text(
                                                    "Add Cart",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18),
                                                  ),
                                                  style: ButtonStyle(
                                                      shape: MaterialStateProperty
                                                          .all(
                                                              RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  40.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  40.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  80.0),
                                                        ),
                                                      )),
                                                      backgroundColor:
                                                          WidgetStateProperty
                                                              .all(AppColor
                                                                  .appColorMainBlue)),
                                                  onPressed: () {},
                                                ),
                                                Gap(15)
                                              ],
                                            )),
                    
                  ],
                ))]))));
  }
}

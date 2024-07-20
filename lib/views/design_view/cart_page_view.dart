import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stacked/stacked.dart';

import '../../constants/constants_helper.dart';
import '../../widgets/custom_widget_helper.dart';
import 'cart_page_view_model.dart';

class CartPageView extends StatelessWidget {
  const CartPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DesignPageViewModel>.reactive(
        viewModelBuilder: () => DesignPageViewModel(),
        onViewModelReady: (model) => model.initialize(),
        builder: (context, model, child) => Scaffold(
            backgroundColor: AppColor.appColorWhite,
            appBar: customAppBarBig(context, model, "cart"),
            body: Scaffold(
                backgroundColor: AppColor.appColorWhite,
                body: Stack(children: [
                  SafeArea(
                      child: ListView(
                    padding: EdgeInsets.only(
                        top: customHeight(context, percentage: 0.15)),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: customHeight(context, percentage: 0.2),
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 11, 8, 8),
                                    offset: Offset(0.5, 0.5),
                                    blurRadius: 40,
                                  ),
                                ],
                                color: AppColor.appColorWhite,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(50),
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(20),
                                )),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: customHeight(context,
                                              percentage: 0.16),
                                          height: customHeight(context,
                                              percentage: 0.16),
                                          decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                color: AppColor.appColorGreylight,
                                                offset: Offset(10, 0),
                                                blurRadius: 10,
                                              ),
                                            ],
                                            color: AppColor.appColorBlack,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.asset(
                                              "assets/item.png",
                                              fit: BoxFit.cover,
                                              height: customHeight(context,
                                                  percentage: 0.16),
                                              width: customHeight(context,
                                                  percentage: 0.16),
                                            ),
                                          ),
                                        ),
                                        Gap(10),
                                        SizedBox(
                                          width: customWidth(context,
                                              percentage: 0.3),
                                          height: customHeight(context,
                                              percentage: 0.1),
                                          child: Column(
                                            children: [
                                              Gap(15),
                                              LimitedBox(
                                                  child: AutoSizeText(
                                                "20 e-Coupon 30 Ltr gas",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              )),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: customWidth(context,
                                              percentage: 0.2),
                                          height: customHeight(context,
                                              percentage: 0.1),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              LimitedBox(
                                                  child: AutoSizeText(
                                                "BHD",
                                              )),
                                              LimitedBox(
                                                  child: AutoSizeText(
                                                "4.9",
                                                minFontSize: 36,
                                                maxFontSize: 38,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              )),
                                            ],
                                          ),
                                        ),
                                      ]),
                                ),
                                Gap(15)
                              ],
                            )),
                      ),
                      Transform.scale(
                        scale: 0.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                    AppColor.appColorMainBlue),
                              ),
                              onPressed: () {
                                model.itemQtyCounter("-");
                              },
                              icon: Icon(
                                Icons.remove,
                                color: AppColor.appColorWhite,
                              ),
                            ),
                            SizedBox(
                                width: customWidth(context, percentage: 0.18),
                                height: customHeight(context, percentage: 0.05),
                                child: Center(
                                    child: LimitedBox(
                                        child: AutoSizeText(
                                  model.itemQty.toString(),
                                  maxFontSize: 36,
                                  minFontSize: 24,
                                )))),
                            IconButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                    AppColor.appColorMainBlue),
                              ),
                              onPressed: () {
                                model.itemQtyCounter("+");
                              },
                              icon: Icon(
                                Icons.add,
                                color: AppColor.appColorWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: customHeight(context, percentage: 0.2),
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 11, 8, 8),
                                    offset: Offset(0.5, 0.5),
                                    blurRadius: 40,
                                  ),
                                ],
                                color: AppColor.appColorWhite,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(50),
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(20),
                                )),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: customHeight(context,
                                              percentage: 0.16),
                                          height: customHeight(context,
                                              percentage: 0.16),
                                          decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                color: AppColor.appColorGreylight,
                                                offset: Offset(10, 0),
                                                blurRadius: 10,
                                              ),
                                            ],
                                            color: AppColor.appColorBlack,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.asset(
                                              "assets/item.png",
                                              fit: BoxFit.cover,
                                              height: customHeight(context,
                                                  percentage: 0.16),
                                              width: customHeight(context,
                                                  percentage: 0.16),
                                            ),
                                          ),
                                        ),
                                        Gap(10),
                                        SizedBox(
                                          width: customWidth(context,
                                              percentage: 0.3),
                                          height: customHeight(context,
                                              percentage: 0.1),
                                          child: Column(
                                            children: [
                                              Gap(15),
                                              LimitedBox(
                                                  child: AutoSizeText(
                                                "20 e-Coupon 30 Ltr gas",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              )),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: customWidth(context,
                                              percentage: 0.2),
                                          height: customHeight(context,
                                              percentage: 0.1),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              LimitedBox(
                                                  child: AutoSizeText(
                                                "BHD",
                                              )),
                                              LimitedBox(
                                                  child: AutoSizeText(
                                                "4.9",
                                                minFontSize: 36,
                                                maxFontSize: 38,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              )),
                                            ],
                                          ),
                                        ),
                                      ]),
                                ),
                                Gap(15)
                              ],
                            )),
                      ),
                      Transform.scale(
                        scale: 0.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                    AppColor.appColorMainBlue),
                              ),
                              onPressed: () {
                                model.itemQtyCounter2("-");
                              },
                              icon: Icon(
                                Icons.remove,
                                color: AppColor.appColorWhite,
                              ),
                            ),
                            SizedBox(
                                width: customWidth(context, percentage: 0.18),
                                height: customHeight(context, percentage: 0.05),
                                child: Center(
                                    child: LimitedBox(
                                        child: AutoSizeText(
                                  model.itemQty2.toString(),
                                  maxFontSize: 36,
                                  minFontSize: 24,
                                )))),
                            IconButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                    AppColor.appColorMainBlue),
                              ),
                              onPressed: () {
                                model.itemQtyCounter2("+");
                              },
                              icon: Icon(
                                Icons.add,
                                color: AppColor.appColorWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                 Container(
            height: customHeight(context,percentage: 0.14),
              padding: EdgeInsets.all(16.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total:9.8 BHD',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'VAT (10%): 1.078 BHD',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Final Price: 10.78 BHD',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    
                    onPressed: () {
                      // Handle check out logic
                    },
                    child: Text('Check Out',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 12.0,
                      ),
                      textStyle: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
                
                ]))));
  }
}

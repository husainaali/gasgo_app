import 'package:gap/gap.dart';
import 'package:gasgo_app/routes/routes.dart';
import 'package:gasgo_app/widgets/custom_widget_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stacked/stacked.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../constants/constants_helper.dart';
import 'home_page_view_model.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
        viewModelBuilder: () => HomePageViewModel(),
        onViewModelReady: (model) => model.initialize(),
        builder: (context, model, child) => Scaffold(
            appBar: customAppBarBig(context,model,"home"),
            backgroundColor: AppColor.appColorWhite,
            body: Stack(
              children: [
                SizedBox(
                  width: Size.infinite.width,
                  height: Size.infinite.height,
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/homebackground.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SafeArea(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, index) {
                          return GestureDetector(
                            onTap: () {
                              context.push(ItemDetailsPageViewRoute.path);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                height: customHeight(context, percentage: 0.16),
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: AppColor.appColorBlack,
                                        offset: Offset(0.5, 0.5),
                                        blurRadius: 10,
                                      ),
                                    ],
                                    color: AppColor.appColorWhite,
                                    borderRadius: BorderRadius.circular(20)),
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
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
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
                                        width: customWidth(context,percentage: 0.3),
                                        child: Column(
                                          children: [
                                            Gap(15),
                                            LimitedBox(
                                              child: AutoSizeText("20 e-Coupon 30 Ltr gas",style: TextStyle(fontWeight: FontWeight.bold),)
                                              ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: customWidth(context,percentage: 0.2),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            LimitedBox(
                                              child: AutoSizeText("BHD",)
                                              ),
                                               LimitedBox(
                                              child: AutoSizeText("4.9",minFontSize: 36,maxFontSize: 38,style: TextStyle(fontWeight: FontWeight.bold),)
                                              ),
                                          ],
                                        ),
                                      ),
                                      
              ]))));
                            
                          
                        })),
              ],
            )));
  }
}

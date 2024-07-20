part of 'custom_widget_helper.dart';

AppBar customAppBarBig(BuildContext context, model, selectedPage) {
  return AppBar(
      backgroundColor: Color(0),
      flexibleSpace: Container(
        width: customWidth(context),
        height: customHeight(context, percentage: 0.16),
        decoration: BoxDecoration(
          color: AppColor.appColorMainBlue,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 55),
              child: Image.asset(
                'assets/gasgoapplogosmall.png',
                height: customHeight(context, percentage: 0.07),
              ),
            ),
          ],
        ),
      ),
      bottom: selectedPage == "home"
          ? PreferredSize(
              preferredSize: Size(customWidth(context),
                  customHeight(context, percentage: 0.11)),
              child: SizedBox(
                height: customHeight(context, percentage: 0.08),
                width: customWidth(context),
                child: ListView.builder(
                  itemCount: model.catList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: SizedBox(
                          width: customWidth(context,
                              percentage:
                                  model.selectedCat == index ? 0.5 : 0.35),
                          height: customHeight(context,
                              percentage:
                                  model.selectedCat == index ? 0.06 : 0.02),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                model.selectedCat == index
                                    ? AppColor.appColorMainBlue
                                    : AppColor.appColorGreyDark,
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40.0),
                                    topRight: Radius.circular(0.0),
                                    bottomLeft: Radius.circular(40.0),
                                    bottomRight: Radius.circular(80.0),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              model.selectedCat = index;
                              model.notifyListeners();
                            },
                            child: LimitedBox(
                              child: AutoSizeText(
                                model.catList[index],
                                maxLines: 1,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                          )),
                    );
                  },
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(customWidth(context),
                  customHeight(context, percentage: 0.03)),
              child: SizedBox()));
}

AppBar customAppBarSmall(BuildContext context) {
  return AppBar(
    backgroundColor: Color(0),
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: AppColor.appColorWhite,
      ),
      onPressed: () {
        context.pop();
      },
    ),
    flexibleSpace: PreferredSize(
      preferredSize: Size.fromHeight(customHeight(context, percentage: 0.07)),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.appColorMainBlue,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30.0),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0,right: 25.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/gasgoapplogosmall.png',
                height: customHeight(context,
                    percentage: 0.05), // Adjust this as needed
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

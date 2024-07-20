part of 'custom_widget_helper.dart';

ElevatedButton customButton(context, title, onPressed) {
  return ElevatedButton(
    child: Text(
      title,
      style: TextStyle(color: AppColor.appColorMainBlue, fontSize: 18),
    ),
    style: ButtonStyle(
      alignment: Alignment.center,
      minimumSize: WidgetStateProperty.all(Size(
          customWidth(context, percentage: 0.8),
          customHeight(context, percentage: 0.08))),
      side:
          WidgetStateProperty.all(BorderSide(color: AppColor.appColorMainBlue)),
    ),
    onPressed: () {
      onPressed();
    },
  );
}

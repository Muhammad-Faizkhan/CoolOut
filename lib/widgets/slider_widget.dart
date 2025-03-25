import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:_cool_out/controller/slider_controller.dart';

class CategorySlider extends StatelessWidget {
  final int index;
  final List<Map<String, dynamic>> categories;

  const CategorySlider({
    Key? key,
    required this.index,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CategorySliderController controller =
        Get.put(CategorySliderController());

    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon with Badge
            10.horizontalSpace,
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topRight,
              children: [
                CircleAvatar(
                  backgroundColor: categories[index]["color"].withOpacity(0.3),
                  radius: 21,
                  child: Image.asset(
                    categories[index]["image"],
                    width: 32,
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  right: -8,
                  top: -5,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 2)
                      ],
                    ),
                    child: Text(
                      "${controller.categoryValues[index]}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            5.horizontalSpace,
            Expanded(
              child: Slider(
                min: 0,
                max: 10,
                value: controller.categoryValues[index].toDouble(),
                onChanged: (value) {
                  controller.categoryValues[index] = value.toInt();
                },
                activeColor: categories[index]["color"],
              ),
            ),

            // Category Label
            SizedBox(
              width: 100.w,
              child: Text(
                categories[index]["name"],
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xff838383),
                ),
              ),
            ),
          ],
        ));
  }
}

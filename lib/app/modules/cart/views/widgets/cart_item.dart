import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants.dart';
import '../../../../data/models/product_model.dart';
import '../../controllers/cart_controller.dart';

class CartItem extends GetView<CartController> {
  final ProductModel product;
  const CartItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.r),
            child: Stack(
              children: [
                Container(
                  width: 100.h,
                  height: 140.h,
                  color: Colors.white,
                ),
                Positioned(
                  child: Image.asset(
                    product.image!,
                    height: 200.h,
                  ),
                ),
              ],
            ),
          ),
          20.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.verticalSpace,
              Text(
                
                product.name!,
                style: theme.textTheme.displayMedium!.copyWith(fontSize: 9.sp),
                overflow: TextOverflow.ellipsis,
              ),
              5.verticalSpace,
              Text('Renk: ${product.size}',
                  style: theme.textTheme.bodyMedium?.copyWith(fontSize: 16.sp)),
              5.verticalSpace,
              Text(
                '\$${product.price}',
                style: theme.textTheme.displayLarge?.copyWith(
                  fontSize: 18.sp,
                ),
              ),
              10.verticalSpace,
              GetBuilder<CartController>(
                id: 'ProductQuantity',
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => controller.onIncreasePressed(product.id!),
                      child: SvgPicture.asset(Constants.decreaseIcon),
                    ),
                    10.horizontalSpace,
                    Text('${product.quantity}',
                        style: theme.textTheme.displaySmall),
                    10.horizontalSpace,
                    GestureDetector(
                      onTap: () => controller.onDecreasePressed(product.id!),
                      child: SvgPicture.asset(Constants.increaseIcon),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () => controller.onDeletePressed(product.id!),
            customBorder: const CircleBorder(),
            child: Container(
              padding: EdgeInsets.all(10.r),
              child: SvgPicture.asset(
                Constants.cancelIcon,
                width: 20.w,
                height: 20.h,
                // ignore: deprecated_member_use
                color: theme.textTheme.bodyMedium!.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

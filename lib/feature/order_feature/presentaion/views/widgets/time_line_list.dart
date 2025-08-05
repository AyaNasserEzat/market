import 'package:flutter/widgets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/text_style.dart';

import 'package:timeline_tile/timeline_tile.dart';

class TimeLineList extends StatelessWidget {
   TimeLineList({super.key});
// Sample step data
final List<OrderStepModel> _orderSteps = [
  OrderStepModel("Delivered", "Estimated for 10 September, 2021"),
  OrderStepModel("Out for delivery", "Estimated for 10 September, 2021"),
  OrderStepModel("Order shipped", "Estimated for 10 September, 2021"),
  OrderStepModel("Confirmed", "Your order has been confirmed"),
  OrderStepModel("Order Placed", "We have received your order"),
];

// Active step index
final int _activeStep = 2;
  @override
  Widget build(BuildContext context) {
    return   SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final step = _orderSteps[index];
                final isActive = index == _activeStep;
                final isCompleted = index < _activeStep;

                return TimelineTile(
                  alignment: TimelineAlign.manual,
                  lineXY: 0.1,
                  isFirst: index == 0,
                  isLast: index == _orderSteps.length - 1,
                  beforeLineStyle: LineStyle(
                    color: AppColor.green3,
                    thickness: 3,
                  ),
                  indicatorStyle: IndicatorStyle(
                    width: 30,
                    height: 30,
                    indicator: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.green3,
                        border: Border.all(
                          color: AppColor.green3,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                  endChild: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          step.title,
                          style: CustomTextStyle.bold19.copyWith(fontSize: 21),
                        ),
                        SizedBox(height: 4),
                        Text(
                          step.subtitle,
                          style: CustomTextStyle.regular,
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: _orderSteps.length,
            ),
          );
  }
}

// Step model
class OrderStepModel {
  final String title;
  final String subtitle;

  OrderStepModel(this.title, this.subtitle);
}
import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/text_style.dart';

class SelectWeightSection extends StatefulWidget {
  const SelectWeightSection({super.key});

  @override
  State<SelectWeightSection> createState() => _SelectWeightSectionState();
}

class _SelectWeightSectionState extends State<SelectWeightSection> {
  bool isVisable=false;
  String selectedWeight="1kg";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("select weight",style: CustomTextStyle.bold19,),
            IconButton(onPressed: (){
setState(() {
  isVisable=!isVisable;
});
            }, icon: Icon(
              isVisable?Icons.expand_less_sharp:
              Icons.expand_more))
          ],
        ),
        Visibility(
          visible: isVisable,
          child: Divider()),
        Visibility(
          visible: isVisable,
          child: RadioListTile(
            value: "50g",
            groupValue: selectedWeight,
            onChanged: (val) {
              setState(() {
                selectedWeight=val!;
              });
            },
            title: Text("50 Gram - 4.00 KD",style: CustomTextStyle.regular,),
          ),
        ),
        Visibility(
          visible: isVisable,
          child: RadioListTile(
            title: Text("1 kg - 6.00KD",style: CustomTextStyle.regular,),
            value: "50kg", groupValue: selectedWeight, onChanged: (val){
setState(() {
  selectedWeight=val!;
});
          
          }),
        )


      ],
    );
  }
}
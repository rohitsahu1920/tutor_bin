import 'package:flutter/material.dart';
import 'package:tutor_bin/res/app_colors.dart';


class AppDropdownButtonField extends StatelessWidget {
  final String value;
  final List<String> items;
  final Function(String?) onChange;

  const AppDropdownButtonField({
    Key? key,
    required this.items,
    required this.value,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      validator: (value){
        if(value == "Select Need type") return "Please select Need type";
        return null;
      },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        border: InputBorder.none,
        fillColor: AppColors.greyLight,
      ),
      value: value,
      items: items.map<DropdownMenuItem<String>>((String data) {
        return DropdownMenuItem<String>(
          value: data,
          child: Text(
            data,
            style: const TextStyle(color: AppColors.black),
            overflow: TextOverflow.ellipsis,
            //maxLines: maxLines,
            softWrap: true,
          ),
        );
      }).toList(),
      onChanged: onChange,
    );
  }
}

import 'package:ecommerce/common/colors.dart';
import 'package:ecommerce/common/path_to_icons.dart';
import 'package:ecommerce/common/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterOptions extends StatelessWidget {
  const FilterOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 44, left: 44, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary: MyAppColors.ellipse3,
                    padding: const EdgeInsets.all(10),
                    minimumSize: const Size(15, 15)),
                child: SvgPicture.asset(MyAppIcons.exit),
              ),
              const Spacer(),
              Text(
                'Filter options',
                style: MyAppTextStyle.title24(Colors.black),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: MyAppColors.ellipse2,
                ),
                child: const Text('Done'),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Brand',
            style: MyAppTextStyle.title24(MyAppColors.ellipse3),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              height: 37,
              padding: const EdgeInsets.only(
                left: 14,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: const MyBrandDropdownButton()),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Price',
            style: MyAppTextStyle.title24(MyAppColors.ellipse3),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              height: 37,
              padding: const EdgeInsets.only(
                left: 14,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: const MyPriceDropdownButton()),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Size',
            style: MyAppTextStyle.title24(MyAppColors.ellipse3),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              height: 37,
              padding: const EdgeInsets.only(
                left: 14,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: const MySizeDropdownButton()),
        ],
      ),
    );
  }
}

class MyBrandDropdownButton extends StatefulWidget {
  const MyBrandDropdownButton({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<MyBrandDropdownButton> createState() => _MyBrandDropdownButtonState();
}

class _MyBrandDropdownButtonState extends State<MyBrandDropdownButton> {
  String firstValue = 'Samsung';
  List<String> items = ['Samsung', 'Apple', 'Huawei', 'Motorolla'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: firstValue,
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.grey,
      ),
      isExpanded: true,
      onChanged: (String? newValue) {
        if (firstValue == newValue) return;
        setState(() {
          firstValue = newValue!;
        });
      },
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
            value: value,
            child: Text(value,
                style: MyAppTextStyle.title24(MyAppColors.ellipse3)));
      }).toList(),
    );
  }
}

class MyPriceDropdownButton extends StatefulWidget {
  const MyPriceDropdownButton({Key? key}) : super(key: key);

  @override
  State<MyPriceDropdownButton> createState() => _MyPriceDropdownButtonState();
}

class _MyPriceDropdownButtonState extends State<MyPriceDropdownButton> {
  String firstValue = '\$300 - \$500';
  List<String> items = [
    '\$300 - \$500',
    '\$500 - \$800',
    '\$800 - \$1100',
    '\$1100 - \$1400'
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: firstValue,
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.grey,
      ),
      isExpanded: true,
      onChanged: (String? newValue) {
        if (firstValue == newValue) return;
        setState(() {
          firstValue = newValue!;
        });
      },
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
            value: value,
            child: Text(value,
                style: MyAppTextStyle.title24(MyAppColors.ellipse3)));
      }).toList(),
    );
  }
}

class MySizeDropdownButton extends StatefulWidget {
  const MySizeDropdownButton({Key? key}) : super(key: key);

  @override
  State<MySizeDropdownButton> createState() => _MySizeDropdownButtonState();
}

class _MySizeDropdownButtonState extends State<MySizeDropdownButton> {
  String firstValue = '4.5 to 5.5 inches';
  List<String> items = [
    '4.5 to 5.5 inches',
    '5.5 to 6.5 inches',
    '6.5 to 7.5 inches',
    '7.5 to 8.5 inches'
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: firstValue,
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.grey,
      ),
      isExpanded: true,
      onChanged: (String? newValue) {
        if (firstValue == newValue) return;
        setState(() {
          firstValue = newValue!;
        });
      },
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
            value: value,
            child: Text(value,
                style: MyAppTextStyle.title24(MyAppColors.ellipse3)));
      }).toList(),
    );
  }
}

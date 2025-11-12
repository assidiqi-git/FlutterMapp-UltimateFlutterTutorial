import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:flutter_app/views/widgets/container_widget.dart';
import 'package:flutter_app/views/widgets/hero_widget.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> content = [
      KContent.introduction,
      KContent.buildUI,
      KContent.widget,
      KContent.constant,
      KContent.uiImprove,
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: ''),
            ...List.generate(content.length, (index) {
              return ContainerWidget(
                title: content[index],
                description: 'Description ${content[index]}',
              );
            }),
          ],
        ),
      ),
    );
  }
}
